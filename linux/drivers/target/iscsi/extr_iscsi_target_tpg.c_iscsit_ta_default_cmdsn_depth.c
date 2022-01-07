
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iscsi_tpg_attrib {scalar_t__ default_cmdsn_depth; } ;
struct iscsi_portal_group {int tpgt; struct iscsi_tpg_attrib tpg_attrib; } ;


 int EINVAL ;
 scalar_t__ TA_DEFAULT_CMDSN_DEPTH_MAX ;
 scalar_t__ TA_DEFAULT_CMDSN_DEPTH_MIN ;
 int pr_debug (char*,int ,scalar_t__) ;
 int pr_err (char*,scalar_t__,scalar_t__) ;

int iscsit_ta_default_cmdsn_depth(
 struct iscsi_portal_group *tpg,
 u32 tcq_depth)
{
 struct iscsi_tpg_attrib *a = &tpg->tpg_attrib;

 if (tcq_depth > TA_DEFAULT_CMDSN_DEPTH_MAX) {
  pr_err("Requested Default Queue Depth: %u larger"
   " than maximum %u\n", tcq_depth,
    TA_DEFAULT_CMDSN_DEPTH_MAX);
  return -EINVAL;
 } else if (tcq_depth < TA_DEFAULT_CMDSN_DEPTH_MIN) {
  pr_err("Requested Default Queue Depth: %u smaller"
   " than minimum %u\n", tcq_depth,
    TA_DEFAULT_CMDSN_DEPTH_MIN);
  return -EINVAL;
 }

 a->default_cmdsn_depth = tcq_depth;
 pr_debug("iSCSI_TPG[%hu] - Set Default CmdSN TCQ Depth to %u\n",
  tpg->tpgt, a->default_cmdsn_depth);

 return 0;
}
