
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct t10_pr_registration {scalar_t__ isid_present_at_reg; } ;
struct se_node_acl {int nacl_sess_lock; int initiatorname; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int strlen (int ) ;

__attribute__((used)) static int iscsi_get_pr_transport_id_len(
 struct se_node_acl *se_nacl,
 struct t10_pr_registration *pr_reg,
 int *format_code)
{
 u32 len = 0, padding = 0;

 spin_lock_irq(&se_nacl->nacl_sess_lock);
 len = strlen(se_nacl->initiatorname);



 len++;







 if (pr_reg->isid_present_at_reg) {
  len += 5;
  len += 7;
  *format_code = 1;
 } else
  *format_code = 0;
 spin_unlock_irq(&se_nacl->nacl_sess_lock);





 padding = ((-len) & 3);
 if (padding != 0)
  len += padding;




 len += 4;

 return len;
}
