
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct iscsit_transport {int (* iscsit_setup_np ) (struct iscsi_np*,struct sockaddr_storage*) ;} ;
struct iscsi_np {int enabled; struct iscsit_transport* np_transport; int np_network_transport; } ;


 int EINVAL ;
 struct iscsit_transport* iscsit_get_transport (int ) ;
 int iscsit_put_transport (struct iscsit_transport*) ;
 int stub1 (struct iscsi_np*,struct sockaddr_storage*) ;

int iscsi_target_setup_login_socket(
 struct iscsi_np *np,
 struct sockaddr_storage *sockaddr)
{
 struct iscsit_transport *t;
 int rc;

 t = iscsit_get_transport(np->np_network_transport);
 if (!t)
  return -EINVAL;

 rc = t->iscsit_setup_np(np, sockaddr);
 if (rc < 0) {
  iscsit_put_transport(t);
  return rc;
 }

 np->np_transport = t;
 np->enabled = 1;
 return 0;
}
