
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int initiatorname; } ;
struct se_lun_acl {struct se_node_acl* se_lun_nacl; int mapped_lun; } ;
struct TYPE_2__ {int fabric_name; } ;


 int ENOMEM ;
 int EOVERFLOW ;
 int GFP_KERNEL ;
 scalar_t__ TRANSPORT_IQN_LEN ;
 struct se_lun_acl* kzalloc (int,int ) ;
 int pr_err (char*,...) ;
 scalar_t__ strlen (int ) ;

struct se_lun_acl *core_dev_init_initiator_node_lun_acl(
 struct se_portal_group *tpg,
 struct se_node_acl *nacl,
 u64 mapped_lun,
 int *ret)
{
 struct se_lun_acl *lacl;

 if (strlen(nacl->initiatorname) >= TRANSPORT_IQN_LEN) {
  pr_err("%s InitiatorName exceeds maximum size.\n",
   tpg->se_tpg_tfo->fabric_name);
  *ret = -EOVERFLOW;
  return ((void*)0);
 }
 lacl = kzalloc(sizeof(struct se_lun_acl), GFP_KERNEL);
 if (!lacl) {
  pr_err("Unable to allocate memory for struct se_lun_acl.\n");
  *ret = -ENOMEM;
  return ((void*)0);
 }

 lacl->mapped_lun = mapped_lun;
 lacl->se_lun_nacl = nacl;

 return lacl;
}
