
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_node_attrib {int default_erl; } ;
struct iscsi_node_acl {struct iscsi_node_attrib node_attrib; } ;


 int EINVAL ;
 int iscsit_na_get_initiatorname (struct iscsi_node_acl*) ;
 int pr_debug (char*,int,int ) ;
 int pr_err (char*,int) ;

int iscsit_na_default_erl(
 struct iscsi_node_acl *acl,
 u32 default_erl)
{
 struct iscsi_node_attrib *a = &acl->node_attrib;

 if (default_erl != 0 && default_erl != 1 && default_erl != 2) {
  pr_err("Requested default ERL: %u not 0, 1, or 2\n",
    default_erl);
  return -EINVAL;
 }

 a->default_erl = default_erl;
 pr_debug("Set use ERL0 flag to %u for Initiator"
  " Node %s\n", a->default_erl,
  iscsit_na_get_initiatorname(acl));

 return 0;
}
