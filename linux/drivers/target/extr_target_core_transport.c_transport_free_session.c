
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_core_fabric_ops {int (* tpg_check_demo_mode_cache ) (struct se_portal_group*) ;} ;
struct se_session {int cmd_count; scalar_t__ sess_cmd_map; int sess_tag_pool; struct se_node_acl* se_node_acl; } ;
struct se_portal_group {int acl_node_mutex; struct target_core_fabric_ops* se_tpg_tfo; } ;
struct se_node_acl {int dynamic_stop; int acl_list; int nacl_sess_lock; int acl_sess_list; scalar_t__ dynamic_node_acl; struct se_portal_group* se_tpg; } ;


 int kmem_cache_free (int ,struct se_session*) ;
 int kvfree (scalar_t__) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int percpu_ref_exit (int *) ;
 int sbitmap_queue_free (int *) ;
 int se_sess_cache ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct se_portal_group*) ;
 int target_put_nacl (struct se_node_acl*) ;

void transport_free_session(struct se_session *se_sess)
{
 struct se_node_acl *se_nacl = se_sess->se_node_acl;





 if (se_nacl) {
  struct se_portal_group *se_tpg = se_nacl->se_tpg;
  const struct target_core_fabric_ops *se_tfo = se_tpg->se_tpg_tfo;
  unsigned long flags;

  se_sess->se_node_acl = ((void*)0);






  mutex_lock(&se_tpg->acl_node_mutex);
  if (se_nacl->dynamic_node_acl &&
      !se_tfo->tpg_check_demo_mode_cache(se_tpg)) {
   spin_lock_irqsave(&se_nacl->nacl_sess_lock, flags);
   if (list_empty(&se_nacl->acl_sess_list))
    se_nacl->dynamic_stop = 1;
   spin_unlock_irqrestore(&se_nacl->nacl_sess_lock, flags);

   if (se_nacl->dynamic_stop)
    list_del_init(&se_nacl->acl_list);
  }
  mutex_unlock(&se_tpg->acl_node_mutex);

  if (se_nacl->dynamic_stop)
   target_put_nacl(se_nacl);

  target_put_nacl(se_nacl);
 }
 if (se_sess->sess_cmd_map) {
  sbitmap_queue_free(&se_sess->sess_tag_pool);
  kvfree(se_sess->sess_cmd_map);
 }
 percpu_ref_exit(&se_sess->cmd_count);
 kmem_cache_free(se_sess_cache, se_sess);
}
