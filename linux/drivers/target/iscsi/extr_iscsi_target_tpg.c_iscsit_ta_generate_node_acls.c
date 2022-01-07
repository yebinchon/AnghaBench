
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_tpg_attrib {int generate_node_acls; int cache_dynamic_acls; } ;
struct iscsi_portal_group {int tpgt; struct iscsi_tpg_attrib tpg_attrib; } ;


 int EINVAL ;
 int pr_debug (char*,...) ;
 int pr_err (char*,int) ;

int iscsit_ta_generate_node_acls(
 struct iscsi_portal_group *tpg,
 u32 flag)
{
 struct iscsi_tpg_attrib *a = &tpg->tpg_attrib;

 if ((flag != 0) && (flag != 1)) {
  pr_err("Illegal value %d\n", flag);
  return -EINVAL;
 }

 a->generate_node_acls = flag;
 pr_debug("iSCSI_TPG[%hu] - Generate Initiator Portal Group ACLs: %s\n",
  tpg->tpgt, (a->generate_node_acls) ? "Enabled" : "Disabled");

 if (flag == 1 && a->cache_dynamic_acls == 0) {
  pr_debug("Explicitly setting cache_dynamic_acls=1 when "
   "generate_node_acls=1\n");
  a->cache_dynamic_acls = 1;
 }

 return 0;
}
