
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int auth_protocol; } ;


 int kfree (int ) ;

__attribute__((used)) static void iscsi_remove_failed_auth_entry(struct iscsi_conn *conn)
{
 kfree(conn->auth_protocol);
}
