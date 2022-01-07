
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int flags; int sense_buffer; } ;
struct request {int dummy; } ;
struct blk_mq_tag_set {int dummy; } ;


 int SCMD_UNCHECKED_ISA_DMA ;
 struct scsi_cmnd* blk_mq_rq_to_pdu (struct request*) ;
 int scsi_free_sense_buffer (int,int ) ;

__attribute__((used)) static void scsi_mq_exit_request(struct blk_mq_tag_set *set, struct request *rq,
     unsigned int hctx_idx)
{
 struct scsi_cmnd *cmd = blk_mq_rq_to_pdu(rq);

 scsi_free_sense_buffer(cmd->flags & SCMD_UNCHECKED_ISA_DMA,
          cmd->sense_buffer);
}
