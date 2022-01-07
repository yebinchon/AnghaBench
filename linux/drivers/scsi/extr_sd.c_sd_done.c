
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_sense_hdr {int sense_key; int asc; } ;
struct scsi_disk {TYPE_2__* device; scalar_t__ medium_access_timed_out; } ;
struct scsi_cmnd {int result; int* cmnd; int sense_buffer; struct request* request; TYPE_1__* device; } ;
struct request {int rq_flags; int rq_disk; } ;
struct TYPE_4__ {int no_write_same; } ;
struct TYPE_3__ {unsigned int sector_size; } ;



 scalar_t__ DRIVER_SENSE ;


 int KERN_INFO ;
 int RQF_QUIET ;
 int SCSI_LOG_HLCOMPLETE (int,int ) ;
 int SCSI_SENSE_BUFFERSIZE ;
 int SD_LBP_DISABLE ;



 unsigned int blk_rq_bytes (struct request*) ;
 scalar_t__ driver_byte (int) ;
 int memset (int ,int ,int ) ;
 unsigned int min (unsigned int,int ) ;
 int req_op (struct request*) ;
 int round_up (unsigned int,unsigned int) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,unsigned int,unsigned int) ;
 unsigned int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_command_normalize_sense (struct scsi_cmnd*,struct scsi_sense_hdr*) ;
 struct scsi_disk* scsi_disk (int ) ;
 unsigned int scsi_get_resid (struct scsi_cmnd*) ;
 int scsi_print_command (struct scsi_cmnd*) ;
 int scsi_sense_is_deferred (struct scsi_sense_hdr*) ;
 int scsi_set_resid (struct scsi_cmnd*,unsigned int) ;
 unsigned int sd_completed_bytes (struct scsi_cmnd*) ;
 int sd_config_discard (struct scsi_disk*,int ) ;
 int sd_config_write_same (struct scsi_disk*) ;
 scalar_t__ sd_is_zoned (struct scsi_disk*) ;
 int sd_printk (int ,struct scsi_disk*,char*,unsigned int,unsigned int) ;
 int sd_zbc_complete (struct scsi_cmnd*,unsigned int,struct scsi_sense_hdr*) ;

__attribute__((used)) static int sd_done(struct scsi_cmnd *SCpnt)
{
 int result = SCpnt->result;
 unsigned int good_bytes = result ? 0 : scsi_bufflen(SCpnt);
 unsigned int sector_size = SCpnt->device->sector_size;
 unsigned int resid;
 struct scsi_sense_hdr sshdr;
 struct scsi_disk *sdkp = scsi_disk(SCpnt->request->rq_disk);
 struct request *req = SCpnt->request;
 int sense_valid = 0;
 int sense_deferred = 0;

 switch (req_op(req)) {
 case 135:
 case 133:
 case 134:
 case 132:
 case 131:
  if (!result) {
   good_bytes = blk_rq_bytes(req);
   scsi_set_resid(SCpnt, 0);
  } else {
   good_bytes = 0;
   scsi_set_resid(SCpnt, blk_rq_bytes(req));
  }
  break;
 default:





  resid = scsi_get_resid(SCpnt);
  if (resid & (sector_size - 1)) {
   sd_printk(KERN_INFO, sdkp,
    "Unaligned partial completion (resid=%u, sector_sz=%u)\n",
    resid, sector_size);
   scsi_print_command(SCpnt);
   resid = min(scsi_bufflen(SCpnt),
        round_up(resid, sector_size));
   scsi_set_resid(SCpnt, resid);
  }
 }

 if (result) {
  sense_valid = scsi_command_normalize_sense(SCpnt, &sshdr);
  if (sense_valid)
   sense_deferred = scsi_sense_is_deferred(&sshdr);
 }
 sdkp->medium_access_timed_out = 0;

 if (driver_byte(result) != DRIVER_SENSE &&
     (!sense_valid || sense_deferred))
  goto out;

 switch (sshdr.sense_key) {
 case 140:
 case 138:
  good_bytes = sd_completed_bytes(SCpnt);
  break;
 case 136:
  good_bytes = scsi_bufflen(SCpnt);
  break;
 case 137:




  SCpnt->result = 0;
  memset(SCpnt->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
  break;
 case 141:
  if (sshdr.asc == 0x10)
   good_bytes = sd_completed_bytes(SCpnt);
  break;
 case 139:
  switch (sshdr.asc) {
  case 0x10:
   good_bytes = sd_completed_bytes(SCpnt);
   break;
  case 0x20:
  case 0x24:
   switch (SCpnt->cmnd[0]) {
   case 130:
    sd_config_discard(sdkp, SD_LBP_DISABLE);
    break;
   case 128:
   case 129:
    if (SCpnt->cmnd[1] & 8) {
     sd_config_discard(sdkp, SD_LBP_DISABLE);
    } else {
     sdkp->device->no_write_same = 1;
     sd_config_write_same(sdkp);
     req->rq_flags |= RQF_QUIET;
    }
    break;
   }
  }
  break;
 default:
  break;
 }

 out:
 if (sd_is_zoned(sdkp))
  sd_zbc_complete(SCpnt, good_bytes, &sshdr);

 SCSI_LOG_HLCOMPLETE(1, scmd_printk(KERN_INFO, SCpnt,
        "sd_done: completed %d of %d bytes\n",
        good_bytes, scsi_bufflen(SCpnt)));

 return good_bytes;
}
