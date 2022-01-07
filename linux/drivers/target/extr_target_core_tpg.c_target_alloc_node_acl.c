
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int acl_index; struct se_portal_group* se_tpg; int initiatorname; int acl_pr_ref_count; int lun_entry_mutex; int nacl_sess_lock; int acl_free_comp; int acl_kref; int lun_entry_hlist; int acl_sess_list; int acl_list; } ;
struct TYPE_2__ {int (* tpg_get_default_depth ) (struct se_portal_group*) ;int (* set_default_node_attributes ) (struct se_node_acl*) ;int node_acl_size; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int SCSI_AUTH_INTR_INDEX ;
 int TRANSPORT_IQN_LEN ;
 int atomic_set (int *,int ) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 struct se_node_acl* kzalloc (int ,int ) ;
 int max (int,int ) ;
 int mutex_init (int *) ;
 int scsi_get_new_index (int ) ;
 int snprintf (int ,int ,char*,unsigned char const*) ;
 int spin_lock_init (int *) ;
 int stub1 (struct se_portal_group*) ;
 int stub2 (struct se_node_acl*) ;
 int target_set_nacl_queue_depth (struct se_portal_group*,struct se_node_acl*,int) ;

__attribute__((used)) static struct se_node_acl *target_alloc_node_acl(struct se_portal_group *tpg,
  const unsigned char *initiatorname)
{
 struct se_node_acl *acl;
 u32 queue_depth;

 acl = kzalloc(max(sizeof(*acl), tpg->se_tpg_tfo->node_acl_size),
   GFP_KERNEL);
 if (!acl)
  return ((void*)0);

 INIT_LIST_HEAD(&acl->acl_list);
 INIT_LIST_HEAD(&acl->acl_sess_list);
 INIT_HLIST_HEAD(&acl->lun_entry_hlist);
 kref_init(&acl->acl_kref);
 init_completion(&acl->acl_free_comp);
 spin_lock_init(&acl->nacl_sess_lock);
 mutex_init(&acl->lun_entry_mutex);
 atomic_set(&acl->acl_pr_ref_count, 0);

 if (tpg->se_tpg_tfo->tpg_get_default_depth)
  queue_depth = tpg->se_tpg_tfo->tpg_get_default_depth(tpg);
 else
  queue_depth = 1;
 target_set_nacl_queue_depth(tpg, acl, queue_depth);

 snprintf(acl->initiatorname, TRANSPORT_IQN_LEN, "%s", initiatorname);
 acl->se_tpg = tpg;
 acl->acl_index = scsi_get_new_index(SCSI_AUTH_INTR_INDEX);

 tpg->se_tpg_tfo->set_default_node_attributes(acl);

 return acl;
}
