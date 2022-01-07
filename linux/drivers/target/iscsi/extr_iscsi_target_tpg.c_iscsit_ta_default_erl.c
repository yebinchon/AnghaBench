
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_tpg_attrib {int default_erl; } ;
struct iscsi_portal_group {int tpgt; struct iscsi_tpg_attrib tpg_attrib; } ;


 int EINVAL ;
 int pr_debug (char*,int ,int) ;
 int pr_err (char*,int) ;

int iscsit_ta_default_erl(
 struct iscsi_portal_group *tpg,
 u32 default_erl)
{
 struct iscsi_tpg_attrib *a = &tpg->tpg_attrib;

 if ((default_erl != 0) && (default_erl != 1) && (default_erl != 2)) {
  pr_err("Illegal value for default_erl: %u\n", default_erl);
  return -EINVAL;
 }

 a->default_erl = default_erl;
 pr_debug("iSCSI_TPG[%hu] - DefaultERL: %u\n", tpg->tpgt, a->default_erl);

 return 0;
}
