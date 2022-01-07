
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int session_fall_back_to_erl0; int sid; } ;


 int atomic_set (int *,int) ;
 int pr_debug (char*,int ) ;

void iscsit_fall_back_to_erl0(struct iscsi_session *sess)
{
 pr_debug("Falling back to ErrorRecoveryLevel=0 for SID:"
   " %u\n", sess->sid);

 atomic_set(&sess->session_fall_back_to_erl0, 1);
}
