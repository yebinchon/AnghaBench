
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_wwn {TYPE_1__* wwn_tf; } ;
struct se_portal_group {int proto_id; TYPE_2__* se_tpg_tfo; int se_tpg_node; int tpg_virt_lun0; int acl_node_mutex; int tpg_lun_mutex; int session_lock; int tpg_sess_list; int acl_node_list; int tpg_pr_ref_count; struct se_wwn* se_tpg_wwn; int tpg_lun_hlist; } ;
struct TYPE_4__ {int (* tpg_get_tag ) (struct se_portal_group*) ;int * (* tpg_get_wwn ) (struct se_portal_group*) ;int fabric_name; } ;
struct TYPE_3__ {TYPE_2__* tf_ops; } ;


 int EINVAL ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int atomic_set (int *,int ) ;
 int core_tpg_add_lun (struct se_portal_group*,int ,int,int ) ;
 int core_tpg_alloc_lun (struct se_portal_group*,int ) ;
 int g_lun0_dev ;
 int kfree (int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int pr_debug (char*,int ,int *,int,int ) ;
 int pr_err (char*) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;
 int * stub1 (struct se_portal_group*) ;
 int * stub2 (struct se_portal_group*) ;
 int stub3 (struct se_portal_group*) ;
 int tpg_list ;
 int tpg_lock ;

int core_tpg_register(
 struct se_wwn *se_wwn,
 struct se_portal_group *se_tpg,
 int proto_id)
{
 int ret;

 if (!se_tpg)
  return -EINVAL;
 if (se_wwn)
  se_tpg->se_tpg_tfo = se_wwn->wwn_tf->tf_ops;

 if (!se_tpg->se_tpg_tfo) {
  pr_err("Unable to locate se_tpg->se_tpg_tfo pointer\n");
  return -EINVAL;
 }

 INIT_HLIST_HEAD(&se_tpg->tpg_lun_hlist);
 se_tpg->proto_id = proto_id;
 se_tpg->se_tpg_wwn = se_wwn;
 atomic_set(&se_tpg->tpg_pr_ref_count, 0);
 INIT_LIST_HEAD(&se_tpg->acl_node_list);
 INIT_LIST_HEAD(&se_tpg->se_tpg_node);
 INIT_LIST_HEAD(&se_tpg->tpg_sess_list);
 spin_lock_init(&se_tpg->session_lock);
 mutex_init(&se_tpg->tpg_lun_mutex);
 mutex_init(&se_tpg->acl_node_mutex);

 if (se_tpg->proto_id >= 0) {
  se_tpg->tpg_virt_lun0 = core_tpg_alloc_lun(se_tpg, 0);
  if (IS_ERR(se_tpg->tpg_virt_lun0))
   return PTR_ERR(se_tpg->tpg_virt_lun0);

  ret = core_tpg_add_lun(se_tpg, se_tpg->tpg_virt_lun0,
    1, g_lun0_dev);
  if (ret < 0) {
   kfree(se_tpg->tpg_virt_lun0);
   return ret;
  }
 }

 spin_lock_bh(&tpg_lock);
 list_add_tail(&se_tpg->se_tpg_node, &tpg_list);
 spin_unlock_bh(&tpg_lock);

 pr_debug("TARGET_CORE[%s]: Allocated portal_group for endpoint: %s, "
   "Proto: %d, Portal Tag: %u\n", se_tpg->se_tpg_tfo->fabric_name,
  se_tpg->se_tpg_tfo->tpg_get_wwn(se_tpg) ?
  se_tpg->se_tpg_tfo->tpg_get_wwn(se_tpg) : ((void*)0),
  se_tpg->proto_id, se_tpg->se_tpg_tfo->tpg_get_tag(se_tpg));

 return 0;
}
