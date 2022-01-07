
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct iscsi_np {int np_network_transport; int np_exports; TYPE_1__* np_transport; int np_sockaddr; int np_list; int np_thread_state; int np_thread; int np_login_timer; int np_restart_comp; int np_thread_lock; int np_flags; } ;
struct TYPE_2__ {int name; } ;


 int ENOMEM ;
 struct iscsi_np* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ISCSI_NP_THREAD_ACTIVE ;
 scalar_t__ IS_ERR (int ) ;
 int NPF_IP_NETWORK ;
 int PTR_ERR (int ) ;
 int g_np_list ;
 int init_completion (int *) ;
 int iscsi_handle_login_thread_timeout ;
 int iscsi_target_login_thread ;
 int iscsi_target_setup_login_socket (struct iscsi_np*,struct sockaddr_storage*) ;
 struct iscsi_np* iscsit_get_np (struct sockaddr_storage*,int) ;
 int kfree (struct iscsi_np*) ;
 int kthread_run (int ,struct iscsi_np*,char*) ;
 struct iscsi_np* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int np_lock ;
 int pr_debug (char*,int *,int ) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

struct iscsi_np *iscsit_add_np(
 struct sockaddr_storage *sockaddr,
 int network_transport)
{
 struct iscsi_np *np;
 int ret;

 mutex_lock(&np_lock);




 np = iscsit_get_np(sockaddr, network_transport);
 if (np) {
  mutex_unlock(&np_lock);
  return np;
 }

 np = kzalloc(sizeof(*np), GFP_KERNEL);
 if (!np) {
  mutex_unlock(&np_lock);
  return ERR_PTR(-ENOMEM);
 }

 np->np_flags |= NPF_IP_NETWORK;
 np->np_network_transport = network_transport;
 spin_lock_init(&np->np_thread_lock);
 init_completion(&np->np_restart_comp);
 INIT_LIST_HEAD(&np->np_list);

 timer_setup(&np->np_login_timer, iscsi_handle_login_thread_timeout, 0);

 ret = iscsi_target_setup_login_socket(np, sockaddr);
 if (ret != 0) {
  kfree(np);
  mutex_unlock(&np_lock);
  return ERR_PTR(ret);
 }

 np->np_thread = kthread_run(iscsi_target_login_thread, np, "iscsi_np");
 if (IS_ERR(np->np_thread)) {
  pr_err("Unable to create kthread: iscsi_np\n");
  ret = PTR_ERR(np->np_thread);
  kfree(np);
  mutex_unlock(&np_lock);
  return ERR_PTR(ret);
 }







 np->np_exports = 1;
 np->np_thread_state = ISCSI_NP_THREAD_ACTIVE;

 list_add_tail(&np->np_list, &g_np_list);
 mutex_unlock(&np_lock);

 pr_debug("CORE[0] - Added Network Portal: %pISpc on %s\n",
  &np->np_sockaddr, np->np_transport->name);

 return np;
}
