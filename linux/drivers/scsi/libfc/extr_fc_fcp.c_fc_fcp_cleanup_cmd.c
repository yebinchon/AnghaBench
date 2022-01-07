
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_fcp_pkt {int status_code; int * seq_ptr; } ;


 int fc_exch_done (int *) ;

__attribute__((used)) static void fc_fcp_cleanup_cmd(struct fc_fcp_pkt *fsp, int error)
{
 if (fsp->seq_ptr) {
  fc_exch_done(fsp->seq_ptr);
  fsp->seq_ptr = ((void*)0);
 }
 fsp->status_code = error;
}
