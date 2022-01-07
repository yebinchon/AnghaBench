
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_tpg_attrib {int fabric_prot_type; } ;
struct iscsi_portal_group {int tpgt; struct iscsi_tpg_attrib tpg_attrib; } ;


 int EINVAL ;
 int pr_debug (char*,int ,int) ;
 int pr_err (char*,int) ;

int iscsit_ta_fabric_prot_type(
 struct iscsi_portal_group *tpg,
 u32 prot_type)
{
 struct iscsi_tpg_attrib *a = &tpg->tpg_attrib;

 if ((prot_type != 0) && (prot_type != 1) && (prot_type != 3)) {
  pr_err("Illegal value for fabric_prot_type: %u\n", prot_type);
  return -EINVAL;
 }

 a->fabric_prot_type = prot_type;
 pr_debug("iSCSI_TPG[%hu] - T10 Fabric Protection Type: %u\n",
   tpg->tpgt, prot_type);

 return 0;
}
