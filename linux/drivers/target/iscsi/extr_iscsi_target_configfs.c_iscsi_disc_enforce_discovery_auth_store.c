
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int authentication; } ;
struct iscsi_portal_group {TYPE_1__ tpg_attrib; int param_list; } ;
struct iscsi_param {int dummy; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_6__ {int enforce_discovery_auth; } ;
struct TYPE_7__ {TYPE_2__ node_auth; } ;
struct TYPE_8__ {TYPE_3__ discovery_acl; struct iscsi_portal_group* discovery_tpg; } ;


 int AUTHMETHOD ;
 char* CHAP ;
 size_t EINVAL ;
 struct iscsi_param* iscsi_find_param_from_key (int ,int ) ;
 scalar_t__ iscsi_update_param_value (struct iscsi_param*,char*) ;
 TYPE_4__* iscsit_global ;
 int kstrtou32 (char const*,int ,int*) ;
 int pr_debug (char*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static ssize_t iscsi_disc_enforce_discovery_auth_store(struct config_item *item,
  const char *page, size_t count)
{
 struct iscsi_param *param;
 struct iscsi_portal_group *discovery_tpg = iscsit_global->discovery_tpg;
 u32 op;
 int err;

 err = kstrtou32(page, 0, &op);
 if (err)
  return -EINVAL;
 if ((op != 1) && (op != 0)) {
  pr_err("Illegal value for enforce_discovery_auth:"
    " %u\n", op);
  return -EINVAL;
 }

 if (!discovery_tpg) {
  pr_err("iscsit_global->discovery_tpg is NULL\n");
  return -EINVAL;
 }

 param = iscsi_find_param_from_key(AUTHMETHOD,
    discovery_tpg->param_list);
 if (!param)
  return -EINVAL;

 if (op) {



  if (iscsi_update_param_value(param, CHAP) < 0)
   return -EINVAL;

  discovery_tpg->tpg_attrib.authentication = 1;
  iscsit_global->discovery_acl.node_auth.enforce_discovery_auth = 1;
  pr_debug("LIO-CORE[0] Successfully enabled"
   " authentication enforcement for iSCSI"
   " Discovery TPG\n");
 } else {



  if (iscsi_update_param_value(param, "CHAP,None") < 0)
   return -EINVAL;

  discovery_tpg->tpg_attrib.authentication = 0;
  iscsit_global->discovery_acl.node_auth.enforce_discovery_auth = 0;
  pr_debug("LIO-CORE[0] Successfully disabled"
   " authentication enforcement for iSCSI"
   " Discovery TPG\n");
 }

 return count;
}
