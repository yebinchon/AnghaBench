
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_fabric_configfs {int dummy; } ;
struct se_wwn {int dummy; } ;
struct iscsi_tiqn {char const* tiqn; struct se_wwn tiqn_wwn; } ;
struct config_group {int dummy; } ;


 struct se_wwn* ERR_CAST (struct iscsi_tiqn*) ;
 scalar_t__ IS_ERR (struct iscsi_tiqn*) ;
 struct iscsi_tiqn* iscsit_add_tiqn (unsigned char*) ;
 int pr_debug (char*,char const*) ;

__attribute__((used)) static struct se_wwn *lio_target_call_coreaddtiqn(
 struct target_fabric_configfs *tf,
 struct config_group *group,
 const char *name)
{
 struct iscsi_tiqn *tiqn;

 tiqn = iscsit_add_tiqn((unsigned char *)name);
 if (IS_ERR(tiqn))
  return ERR_CAST(tiqn);

 pr_debug("LIO_Target_ConfigFS: REGISTER -> %s\n", tiqn->tiqn);
 pr_debug("LIO_Target_ConfigFS: REGISTER -> Allocated Node:"
   " %s\n", name);
 return &tiqn->tiqn_wwn;
}
