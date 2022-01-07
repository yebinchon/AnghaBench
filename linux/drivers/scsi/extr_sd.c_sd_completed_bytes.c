
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct scsi_device {scalar_t__ sector_size; } ;
struct scsi_cmnd {int sense_buffer; struct scsi_device* device; struct request* request; } ;
struct request {int dummy; } ;


 int SCSI_SENSE_BUFFERSIZE ;
 int blk_rq_pos (struct request*) ;
 scalar_t__ bytes_to_logical (struct scsi_device*,scalar_t__) ;
 unsigned int logical_to_bytes (struct scsi_device*,scalar_t__) ;
 unsigned int min (unsigned int,unsigned int) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 scalar_t__ scsi_get_resid (struct scsi_cmnd*) ;
 int scsi_get_sense_info_fld (int ,int ,scalar_t__*) ;
 scalar_t__ sectors_to_logical (struct scsi_device*,int ) ;

__attribute__((used)) static unsigned int sd_completed_bytes(struct scsi_cmnd *scmd)
{
 struct request *req = scmd->request;
 struct scsi_device *sdev = scmd->device;
 unsigned int transferred, good_bytes;
 u64 start_lba, end_lba, bad_lba;





 if (scsi_bufflen(scmd) <= sdev->sector_size)
  return 0;


 if (!scsi_get_sense_info_fld(scmd->sense_buffer,
         SCSI_SENSE_BUFFERSIZE,
         &bad_lba))
  return 0;





 start_lba = sectors_to_logical(sdev, blk_rq_pos(req));
 end_lba = start_lba + bytes_to_logical(sdev, scsi_bufflen(scmd));
 if (bad_lba < start_lba || bad_lba >= end_lba)
  return 0;





 transferred = scsi_bufflen(scmd) - scsi_get_resid(scmd);




 good_bytes = logical_to_bytes(sdev, bad_lba - start_lba);

 return min(good_bytes, transferred);
}
