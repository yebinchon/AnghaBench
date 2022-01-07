
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int cr_i_lock; } ;
struct iscsi_conn_recovery {int cr_list; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void iscsit_remove_inactive_connection_recovery_entry(
 struct iscsi_conn_recovery *cr,
 struct iscsi_session *sess)
{
 spin_lock(&sess->cr_i_lock);
 list_del(&cr->cr_list);
 spin_unlock(&sess->cr_i_lock);
}
