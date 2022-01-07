
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_session {TYPE_2__* sess_ops; } ;
struct iscsi_conn {TYPE_1__* conn_transport; struct iscsi_session* sess; } ;
struct TYPE_4__ {int SessionType; } ;
struct TYPE_3__ {scalar_t__ transport_type; } ;


 scalar_t__ ISCSI_INFINIBAND ;
 int iscsit_start_nopin_timer (struct iscsi_conn*) ;

__attribute__((used)) static void iscsi_post_login_start_timers(struct iscsi_conn *conn)
{
 struct iscsi_session *sess = conn->sess;



 if (conn->conn_transport->transport_type == ISCSI_INFINIBAND)
  return;

 if (!sess->sess_ops->SessionType)
  iscsit_start_nopin_timer(conn);
}
