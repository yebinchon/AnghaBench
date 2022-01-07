
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int cr_a_lock; int sid; int conn_recovery_count; } ;
struct iscsi_conn_recovery {int cr_list; } ;


 int kfree (struct iscsi_conn_recovery*) ;
 int list_del (int *) ;
 int pr_debug (char*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int iscsit_remove_active_connection_recovery_entry(
 struct iscsi_conn_recovery *cr,
 struct iscsi_session *sess)
{
 spin_lock(&sess->cr_a_lock);
 list_del(&cr->cr_list);

 sess->conn_recovery_count--;
 pr_debug("Decremented connection recovery count to %u for"
  " SID: %u\n", sess->conn_recovery_count, sess->sid);
 spin_unlock(&sess->cr_a_lock);

 kfree(cr);

 return 0;
}
