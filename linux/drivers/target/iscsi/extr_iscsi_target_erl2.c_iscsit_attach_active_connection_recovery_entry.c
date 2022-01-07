
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int cr_a_lock; int cr_active_list; } ;
struct iscsi_conn_recovery {int cr_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int iscsit_attach_active_connection_recovery_entry(
 struct iscsi_session *sess,
 struct iscsi_conn_recovery *cr)
{
 spin_lock(&sess->cr_a_lock);
 list_add_tail(&cr->cr_list, &sess->cr_active_list);
 spin_unlock(&sess->cr_a_lock);

 return 0;
}
