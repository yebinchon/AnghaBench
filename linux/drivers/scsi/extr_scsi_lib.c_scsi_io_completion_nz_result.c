
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_cmnd {scalar_t__* sense_buffer; struct request* request; } ;
struct request {int rq_flags; } ;
typedef int blk_status_t ;
struct TYPE_2__ {int sense_len; } ;


 int BLK_STS_OK ;
 scalar_t__ RECOVERED_ERROR ;
 int RQF_QUIET ;
 int SCSI_SENSE_BUFFERSIZE ;
 scalar_t__ blk_rq_bytes (struct request*) ;
 scalar_t__ blk_rq_is_passthrough (struct request*) ;
 int min (scalar_t__,int ) ;
 int scsi_command_normalize_sense (struct scsi_cmnd*,struct scsi_sense_hdr*) ;
 int scsi_print_sense (struct scsi_cmnd*) ;
 TYPE_1__* scsi_req (struct request*) ;
 int scsi_result_to_blk_status (struct scsi_cmnd*,int) ;
 int scsi_sense_is_deferred (struct scsi_sense_hdr*) ;
 scalar_t__ scsi_status_is_good (int) ;
 scalar_t__ status_byte (int) ;

__attribute__((used)) static int scsi_io_completion_nz_result(struct scsi_cmnd *cmd, int result,
     blk_status_t *blk_statp)
{
 bool sense_valid;
 bool sense_current = 1;
 struct request *req = cmd->request;
 struct scsi_sense_hdr sshdr;

 sense_valid = scsi_command_normalize_sense(cmd, &sshdr);
 if (sense_valid)
  sense_current = !scsi_sense_is_deferred(&sshdr);

 if (blk_rq_is_passthrough(req)) {
  if (sense_valid) {



   scsi_req(req)->sense_len =
    min(8 + cmd->sense_buffer[7],
        SCSI_SENSE_BUFFERSIZE);
  }
  if (sense_current)
   *blk_statp = scsi_result_to_blk_status(cmd, result);
 } else if (blk_rq_bytes(req) == 0 && sense_current) {





  *blk_statp = scsi_result_to_blk_status(cmd, result);
 }






 if (sense_valid && (sshdr.sense_key == RECOVERED_ERROR)) {
  bool do_print = 1;





  if ((sshdr.asc == 0x0) && (sshdr.ascq == 0x1d))
   do_print = 0;
  else if (req->rq_flags & RQF_QUIET)
   do_print = 0;
  if (do_print)
   scsi_print_sense(cmd);
  result = 0;

  *blk_statp = BLK_STS_OK;
 }







 if (status_byte(result) && scsi_status_is_good(result)) {
  result = 0;
  *blk_statp = BLK_STS_OK;
 }
 return result;
}
