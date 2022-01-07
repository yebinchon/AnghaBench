
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_tpg_attrib {int login_keys_workaround; } ;
struct iscsi_portal_group {int tpgt; struct iscsi_tpg_attrib tpg_attrib; } ;


 int EINVAL ;
 int pr_debug (char*,int ,char*) ;
 int pr_err (char*,int) ;

int iscsit_ta_login_keys_workaround(
 struct iscsi_portal_group *tpg,
 u32 flag)
{
 struct iscsi_tpg_attrib *a = &tpg->tpg_attrib;

 if ((flag != 0) && (flag != 1)) {
  pr_err("Illegal value %d\n", flag);
  return -EINVAL;
 }

 a->login_keys_workaround = flag;
 pr_debug("iSCSI_TPG[%hu] - TPG enabled bit for login keys workaround: %s ",
  tpg->tpgt, (a->login_keys_workaround) ? "ON" : "OFF");

 return 0;
}
