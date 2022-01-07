
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_fcp_pkt {int tm_done; scalar_t__ wait_for_comp; int state; } ;


 int FC_SRB_ABORTED ;
 int FC_SRB_ABORT_PENDING ;
 int complete (int *) ;
 int fc_fcp_complete_locked (struct fc_fcp_pkt*) ;

__attribute__((used)) static void fc_fcp_abort_done(struct fc_fcp_pkt *fsp)
{
 fsp->state |= FC_SRB_ABORTED;
 fsp->state &= ~FC_SRB_ABORT_PENDING;

 if (fsp->wait_for_comp)
  complete(&fsp->tm_done);
 else
  fc_fcp_complete_locked(fsp);
}
