
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct iscsi_tpg_np {int tpg_np_parent_lock; int tpg_np_parent_list; int tpg_np_child_list; struct iscsi_tpg_np* tpg_np_parent; int tpg_np_list; struct iscsi_portal_group* tpg; struct iscsi_np* tpg_np; int tpg_np_kref; int tpg_np_comp; } ;
struct iscsi_portal_group {int tpgt; TYPE_2__* tpg_tiqn; int tpg_np_lock; int num_tpg_nps; int tpg_gnp_list; } ;
struct iscsi_np {TYPE_1__* np_transport; int np_sockaddr; } ;
struct TYPE_4__ {int tiqn; int tiqn_num_tpg_nps; } ;
struct TYPE_3__ {int name; } ;


 int EEXIST ;
 int ENOMEM ;
 struct iscsi_tpg_np* ERR_CAST (struct iscsi_np*) ;
 struct iscsi_tpg_np* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct iscsi_np*) ;
 int init_completion (int *) ;
 struct iscsi_np* iscsit_add_np (struct sockaddr_storage*,int) ;
 scalar_t__ iscsit_tpg_check_network_portal (TYPE_2__*,struct sockaddr_storage*,int) ;
 int kfree (struct iscsi_tpg_np*) ;
 int kref_init (int *) ;
 struct iscsi_tpg_np* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,int ,int *,int ,int ) ;
 int pr_err (char*,...) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

struct iscsi_tpg_np *iscsit_tpg_add_network_portal(
 struct iscsi_portal_group *tpg,
 struct sockaddr_storage *sockaddr,
 struct iscsi_tpg_np *tpg_np_parent,
 int network_transport)
{
 struct iscsi_np *np;
 struct iscsi_tpg_np *tpg_np;

 if (!tpg_np_parent) {
  if (iscsit_tpg_check_network_portal(tpg->tpg_tiqn, sockaddr,
    network_transport)) {
   pr_err("Network Portal: %pISc already exists on a"
    " different TPG on %s\n", sockaddr,
    tpg->tpg_tiqn->tiqn);
   return ERR_PTR(-EEXIST);
  }
 }

 tpg_np = kzalloc(sizeof(struct iscsi_tpg_np), GFP_KERNEL);
 if (!tpg_np) {
  pr_err("Unable to allocate memory for"
    " struct iscsi_tpg_np.\n");
  return ERR_PTR(-ENOMEM);
 }

 np = iscsit_add_np(sockaddr, network_transport);
 if (IS_ERR(np)) {
  kfree(tpg_np);
  return ERR_CAST(np);
 }

 INIT_LIST_HEAD(&tpg_np->tpg_np_list);
 INIT_LIST_HEAD(&tpg_np->tpg_np_child_list);
 INIT_LIST_HEAD(&tpg_np->tpg_np_parent_list);
 spin_lock_init(&tpg_np->tpg_np_parent_lock);
 init_completion(&tpg_np->tpg_np_comp);
 kref_init(&tpg_np->tpg_np_kref);
 tpg_np->tpg_np = np;
 tpg_np->tpg = tpg;

 spin_lock(&tpg->tpg_np_lock);
 list_add_tail(&tpg_np->tpg_np_list, &tpg->tpg_gnp_list);
 tpg->num_tpg_nps++;
 if (tpg->tpg_tiqn)
  tpg->tpg_tiqn->tiqn_num_tpg_nps++;
 spin_unlock(&tpg->tpg_np_lock);

 if (tpg_np_parent) {
  tpg_np->tpg_np_parent = tpg_np_parent;
  spin_lock(&tpg_np_parent->tpg_np_parent_lock);
  list_add_tail(&tpg_np->tpg_np_child_list,
   &tpg_np_parent->tpg_np_parent_list);
  spin_unlock(&tpg_np_parent->tpg_np_parent_lock);
 }

 pr_debug("CORE[%s] - Added Network Portal: %pISpc,%hu on %s\n",
  tpg->tpg_tiqn->tiqn, &np->np_sockaddr, tpg->tpgt,
  np->np_transport->name);

 return tpg_np;
}
