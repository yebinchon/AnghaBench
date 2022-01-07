
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioim_s {int itnim; int iotag; int bfa; } ;


 int BFA_IOIM_SM_HWFAIL ;
 int bfa_sm_send_event (struct bfa_ioim_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int bfa_trc (int ,int ) ;
 int io_iocdowns ;

void
bfa_ioim_iocdisable(struct bfa_ioim_s *ioim)
{
 bfa_trc(ioim->bfa, ioim->iotag);
 bfa_stats(ioim->itnim, io_iocdowns);
 bfa_sm_send_event(ioim, BFA_IOIM_SM_HWFAIL);
}
