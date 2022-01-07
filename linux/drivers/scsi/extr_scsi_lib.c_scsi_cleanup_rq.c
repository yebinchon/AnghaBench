
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int rq_flags; } ;


 int RQF_DONTPREP ;
 int blk_mq_rq_to_pdu (struct request*) ;
 int scsi_mq_uninit_cmd (int ) ;

__attribute__((used)) static void scsi_cleanup_rq(struct request *rq)
{
 if (rq->rq_flags & RQF_DONTPREP) {
  scsi_mq_uninit_cmd(blk_mq_rq_to_pdu(rq));
  rq->rq_flags &= ~RQF_DONTPREP;
 }
}
