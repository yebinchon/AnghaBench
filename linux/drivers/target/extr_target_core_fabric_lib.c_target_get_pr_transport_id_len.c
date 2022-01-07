
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t10_pr_registration {int dummy; } ;
struct se_node_acl {TYPE_1__* se_tpg; } ;
struct TYPE_2__ {int proto_id; } ;


 int EINVAL ;





 int iscsi_get_pr_transport_id_len (struct se_node_acl*,struct t10_pr_registration*,int*) ;
 int pr_err (char*,int) ;

int target_get_pr_transport_id_len(struct se_node_acl *nacl,
  struct t10_pr_registration *pr_reg, int *format_code)
{
 switch (nacl->se_tpg->proto_id) {
 case 132:
 case 129:
 case 128:
 case 130:
  break;
 case 131:
  return iscsi_get_pr_transport_id_len(nacl, pr_reg, format_code);
 default:
  pr_err("Unknown proto_id: 0x%02x\n", nacl->se_tpg->proto_id);
  return -EINVAL;
 }




 *format_code = 0;
 return 24;
}
