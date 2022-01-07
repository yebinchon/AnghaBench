
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ss_family; } ;
struct iscsi_np {TYPE_1__ np_sockaddr; } ;
struct iscsi_conn {int local_sockaddr; int login_sockaddr; int login_family; } ;
struct TYPE_4__ {int local_addr; int remote_addr; } ;
struct cxgbit_sock {TYPE_2__ com; } ;



__attribute__((used)) static void
cxgbit_set_conn_info(struct iscsi_np *np, struct iscsi_conn *conn,
       struct cxgbit_sock *csk)
{
 conn->login_family = np->np_sockaddr.ss_family;
 conn->login_sockaddr = csk->com.remote_addr;
 conn->local_sockaddr = csk->com.local_addr;
}
