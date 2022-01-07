
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int cr_i_lock; int sid; int conn_recovery_count; int cr_inactive_list; } ;
struct iscsi_conn_recovery {int cr_list; } ;


 int list_add_tail (int *,int *) ;
 int pr_debug (char*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int iscsit_attach_inactive_connection_recovery_entry(
 struct iscsi_session *sess,
 struct iscsi_conn_recovery *cr)
{
 spin_lock(&sess->cr_i_lock);
 list_add_tail(&cr->cr_list, &sess->cr_inactive_list);

 sess->conn_recovery_count++;
 pr_debug("Incremented connection recovery count to %u for"
  " SID: %u\n", sess->conn_recovery_count, sess->sid);
 spin_unlock(&sess->cr_i_lock);

 return 0;
}
