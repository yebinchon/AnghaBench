
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioim_s {TYPE_1__* iosp; int itnim; int iotag; int bfa; } ;
struct TYPE_2__ {int * tskim; } ;


 int BFA_IOIM_SM_CLEANUP ;
 int bfa_sm_send_event (struct bfa_ioim_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int bfa_trc (int ,int ) ;
 int io_cleanups ;

void
bfa_ioim_cleanup(struct bfa_ioim_s *ioim)
{
 bfa_trc(ioim->bfa, ioim->iotag);
 bfa_stats(ioim->itnim, io_cleanups);

 ioim->iosp->tskim = ((void*)0);
 bfa_sm_send_event(ioim, BFA_IOIM_SM_CLEANUP);
}
