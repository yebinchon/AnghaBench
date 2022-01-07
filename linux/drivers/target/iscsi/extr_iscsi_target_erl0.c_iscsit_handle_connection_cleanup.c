
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_session {TYPE_1__* sess_ops; int session_fall_back_to_erl0; int session_reinstatement; } ;
struct iscsi_conn {int cid; struct iscsi_session* sess; } ;
struct TYPE_2__ {int ErrorRecoveryLevel; int InitiatorName; } ;


 int atomic_read (int *) ;
 int iscsit_close_connection (struct iscsi_conn*) ;
 int iscsit_connection_recovery_transport_reset (struct iscsi_conn*) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static void iscsit_handle_connection_cleanup(struct iscsi_conn *conn)
{
 struct iscsi_session *sess = conn->sess;

 if ((sess->sess_ops->ErrorRecoveryLevel == 2) &&
     !atomic_read(&sess->session_reinstatement) &&
     !atomic_read(&sess->session_fall_back_to_erl0))
  iscsit_connection_recovery_transport_reset(conn);
 else {
  pr_debug("Performing cleanup for failed iSCSI"
   " Connection ID: %hu from %s\n", conn->cid,
   sess->sess_ops->InitiatorName);
  iscsit_close_connection(conn);
 }
}
