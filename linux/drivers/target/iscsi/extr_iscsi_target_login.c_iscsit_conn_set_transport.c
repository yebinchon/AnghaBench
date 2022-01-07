
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsit_transport {int name; int owner; } ;
struct iscsi_conn {struct iscsit_transport* conn_transport; } ;


 int EINVAL ;
 int pr_err (char*,int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int
iscsit_conn_set_transport(struct iscsi_conn *conn, struct iscsit_transport *t)
{
 int rc;

 if (!t->owner) {
  conn->conn_transport = t;
  return 0;
 }

 rc = try_module_get(t->owner);
 if (!rc) {
  pr_err("try_module_get() failed for %s\n", t->name);
  return -EINVAL;
 }

 conn->conn_transport = t;
 return 0;
}
