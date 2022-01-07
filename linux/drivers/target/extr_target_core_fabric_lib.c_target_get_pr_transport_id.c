
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t10_pr_registration {int dummy; } ;
struct se_node_acl {TYPE_1__* se_tpg; } ;
struct TYPE_2__ {int proto_id; } ;


 int EINVAL ;





 int fc_get_pr_transport_id (struct se_node_acl*,int*,unsigned char*) ;
 int iscsi_get_pr_transport_id (struct se_node_acl*,struct t10_pr_registration*,int*,unsigned char*) ;
 int pr_err (char*,int) ;
 int sas_get_pr_transport_id (struct se_node_acl*,int*,unsigned char*) ;
 int sbp_get_pr_transport_id (struct se_node_acl*,int*,unsigned char*) ;
 int srp_get_pr_transport_id (struct se_node_acl*,int*,unsigned char*) ;

int target_get_pr_transport_id(struct se_node_acl *nacl,
  struct t10_pr_registration *pr_reg, int *format_code,
  unsigned char *buf)
{
 switch (nacl->se_tpg->proto_id) {
 case 130:
  return sas_get_pr_transport_id(nacl, format_code, buf);
 case 129:
  return sbp_get_pr_transport_id(nacl, format_code, buf);
 case 128:
  return srp_get_pr_transport_id(nacl, format_code, buf);
 case 132:
  return fc_get_pr_transport_id(nacl, format_code, buf);
 case 131:
  return iscsi_get_pr_transport_id(nacl, pr_reg, format_code,
    buf);
 default:
  pr_err("Unknown proto_id: 0x%02x\n", nacl->se_tpg->proto_id);
  return -EINVAL;
 }
}
