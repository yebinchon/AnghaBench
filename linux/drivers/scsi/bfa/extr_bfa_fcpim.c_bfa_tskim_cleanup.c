
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_tskim_s {int itnim; int notify; } ;


 int BFA_TRUE ;
 int BFA_TSKIM_SM_CLEANUP ;
 int bfa_sm_send_event (struct bfa_tskim_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int tm_cleanups ;

void
bfa_tskim_cleanup(struct bfa_tskim_s *tskim)
{
 tskim->notify = BFA_TRUE;
 bfa_stats(tskim->itnim, tm_cleanups);
 bfa_sm_send_event(tskim, BFA_TSKIM_SM_CLEANUP);
}
