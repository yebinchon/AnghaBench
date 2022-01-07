
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {int dummy; } ;
struct host_if_msg {void (* fn ) (struct work_struct*) ;int is_sync; int work_comp; struct wilc_vif* vif; } ;


 int EINVAL ;
 int ENOMEM ;
 struct host_if_msg* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int init_completion (int *) ;
 struct host_if_msg* kzalloc (int,int ) ;

__attribute__((used)) static struct host_if_msg*
wilc_alloc_work(struct wilc_vif *vif, void (*work_fun)(struct work_struct *),
  bool is_sync)
{
 struct host_if_msg *msg;

 if (!work_fun)
  return ERR_PTR(-EINVAL);

 msg = kzalloc(sizeof(*msg), GFP_ATOMIC);
 if (!msg)
  return ERR_PTR(-ENOMEM);
 msg->fn = work_fun;
 msg->vif = vif;
 msg->is_sync = is_sync;
 if (is_sync)
  init_completion(&msg->work_comp);

 return msg;
}
