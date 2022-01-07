
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_core_fabric_ops {int fabric_name; int (* sess_get_initiator_sid ) (struct se_session*,unsigned char*,int) ;int (* tpg_check_prot_fabric_only ) (struct se_portal_group*) ;} ;
struct se_session {void* fabric_sess_ptr; int sess_list; int sess_acl_list; int sess_bin_isid; int sess_prot_type; struct se_portal_group* se_tpg; } ;
struct se_portal_group {struct target_core_fabric_ops* se_tpg_tfo; int tpg_sess_list; } ;
struct se_node_acl {int nacl_sess_lock; int acl_sess_list; struct se_session* nacl_sess; int saved_prot_type; } ;


 int PR_REG_ISID_LEN ;
 int get_unaligned_be64 (unsigned char*) ;
 int list_add_tail (int *,int *) ;
 int memset (unsigned char*,int ,int) ;
 int pr_debug (char*,int ,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct se_portal_group*) ;
 int stub2 (struct se_session*,unsigned char*,int) ;

void __transport_register_session(
 struct se_portal_group *se_tpg,
 struct se_node_acl *se_nacl,
 struct se_session *se_sess,
 void *fabric_sess_ptr)
{
 const struct target_core_fabric_ops *tfo = se_tpg->se_tpg_tfo;
 unsigned char buf[PR_REG_ISID_LEN];
 unsigned long flags;

 se_sess->se_tpg = se_tpg;
 se_sess->fabric_sess_ptr = fabric_sess_ptr;






 if (se_nacl) {
  if (se_nacl->saved_prot_type)
   se_sess->sess_prot_type = se_nacl->saved_prot_type;
  else if (tfo->tpg_check_prot_fabric_only)
   se_sess->sess_prot_type = se_nacl->saved_prot_type =
     tfo->tpg_check_prot_fabric_only(se_tpg);




  if (se_tpg->se_tpg_tfo->sess_get_initiator_sid != ((void*)0)) {
   memset(&buf[0], 0, PR_REG_ISID_LEN);
   se_tpg->se_tpg_tfo->sess_get_initiator_sid(se_sess,
     &buf[0], PR_REG_ISID_LEN);
   se_sess->sess_bin_isid = get_unaligned_be64(&buf[0]);
  }

  spin_lock_irqsave(&se_nacl->nacl_sess_lock, flags);




  se_nacl->nacl_sess = se_sess;

  list_add_tail(&se_sess->sess_acl_list,
         &se_nacl->acl_sess_list);
  spin_unlock_irqrestore(&se_nacl->nacl_sess_lock, flags);
 }
 list_add_tail(&se_sess->sess_list, &se_tpg->tpg_sess_list);

 pr_debug("TARGET_CORE[%s]: Registered fabric_sess_ptr: %p\n",
  se_tpg->se_tpg_tfo->fabric_name, se_sess->fabric_sess_ptr);
}
