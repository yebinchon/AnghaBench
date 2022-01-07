
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fc_fcp_pkt {int seq_ptr; int state; TYPE_1__* lp; } ;
struct TYPE_4__ {int FcpPktAborts; } ;
struct TYPE_3__ {int stats; } ;


 int EINVAL ;
 int ENXIO ;
 int FC_SRB_ABORT_PENDING ;
 int fc_fcp_abort_done (struct fc_fcp_pkt*) ;
 int fc_seq_exch_abort (int ,int ) ;
 int get_cpu () ;
 TYPE_2__* per_cpu_ptr (int ,int ) ;
 int put_cpu () ;

__attribute__((used)) static int fc_fcp_send_abort(struct fc_fcp_pkt *fsp)
{
 int rc;

 if (!fsp->seq_ptr)
  return -EINVAL;

 per_cpu_ptr(fsp->lp->stats, get_cpu())->FcpPktAborts++;
 put_cpu();

 fsp->state |= FC_SRB_ABORT_PENDING;
 rc = fc_seq_exch_abort(fsp->seq_ptr, 0);




 if (rc == -ENXIO) {
  fc_fcp_abort_done(fsp);
  rc = 0;
 }
 return rc;
}
