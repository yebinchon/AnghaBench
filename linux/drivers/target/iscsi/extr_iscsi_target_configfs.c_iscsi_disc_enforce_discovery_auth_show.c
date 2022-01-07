
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_node_auth {int enforce_discovery_auth; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {struct iscsi_node_auth node_auth; } ;
struct TYPE_4__ {TYPE_1__ discovery_acl; } ;


 TYPE_2__* iscsit_global ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t iscsi_disc_enforce_discovery_auth_show(struct config_item *item,
  char *page)
{
 struct iscsi_node_auth *discovery_auth = &iscsit_global->discovery_acl.node_auth;

 return sprintf(page, "%d\n", discovery_auth->enforce_discovery_auth);
}
