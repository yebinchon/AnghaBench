
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_node_attrib {int random_r2t_offsets; } ;
struct iscsi_node_acl {struct iscsi_node_attrib node_attrib; } ;


 int EINVAL ;
 int iscsit_na_get_initiatorname (struct iscsi_node_acl*) ;
 int pr_debug (char*,int,int ) ;
 int pr_err (char*,int) ;

int iscsit_na_random_r2t_offsets(
 struct iscsi_node_acl *acl,
 u32 random_r2t_offsets)
{
 struct iscsi_node_attrib *a = &acl->node_attrib;

 if (random_r2t_offsets != 0 && random_r2t_offsets != 1) {
  pr_err("Requested Random R2T Offsets: %u not"
   " 0 or 1\n", random_r2t_offsets);
  return -EINVAL;
 }

 a->random_r2t_offsets = random_r2t_offsets;
 pr_debug("Set Random R2T Offsets to %u for"
  " Initiator Node %s\n", a->random_r2t_offsets,
  iscsit_na_get_initiatorname(acl));

 return 0;
}
