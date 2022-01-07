
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_node_attrib {int random_datain_seq_offsets; } ;
struct iscsi_node_acl {struct iscsi_node_attrib node_attrib; } ;


 int EINVAL ;
 int iscsit_na_get_initiatorname (struct iscsi_node_acl*) ;
 int pr_debug (char*,int,int ) ;
 int pr_err (char*,int) ;

int iscsit_na_random_datain_seq_offsets(
 struct iscsi_node_acl *acl,
 u32 random_datain_seq_offsets)
{
 struct iscsi_node_attrib *a = &acl->node_attrib;

 if (random_datain_seq_offsets != 0 && random_datain_seq_offsets != 1) {
  pr_err("Requested Random DataIN Sequence Offsets: %u"
   " not 0 or 1\n", random_datain_seq_offsets);
  return -EINVAL;
 }

 a->random_datain_seq_offsets = random_datain_seq_offsets;
 pr_debug("Set Random DataIN Sequence Offsets to %u for"
  " Initiator Node %s\n", a->random_datain_seq_offsets,
  iscsit_na_get_initiatorname(acl));

 return 0;
}
