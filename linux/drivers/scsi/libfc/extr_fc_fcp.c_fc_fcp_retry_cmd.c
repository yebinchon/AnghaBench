
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_fcp_pkt {int status_code; scalar_t__ io_status; int state; int * seq_ptr; } ;


 int FC_SRB_ABORT_PENDING ;
 int fc_exch_done (int *) ;
 int fc_fcp_complete_locked (struct fc_fcp_pkt*) ;

__attribute__((used)) static void fc_fcp_retry_cmd(struct fc_fcp_pkt *fsp, int status_code)
{
 if (fsp->seq_ptr) {
  fc_exch_done(fsp->seq_ptr);
  fsp->seq_ptr = ((void*)0);
 }

 fsp->state &= ~FC_SRB_ABORT_PENDING;
 fsp->io_status = 0;
 fsp->status_code = status_code;
 fc_fcp_complete_locked(fsp);
}
