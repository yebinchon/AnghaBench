
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct us_data {int last_sector_retries; scalar_t__ use_last_sector_hacks; } ;
struct scsi_disk {int capacity; } ;
struct scsi_cmnd {int* cmnd; scalar_t__ result; int sense_buffer; TYPE_1__* request; } ;
struct gendisk {int dummy; } ;
typedef int record_not_found ;
struct TYPE_2__ {struct gendisk* rq_disk; } ;



 int READ_10 ;
 scalar_t__ SAM_STAT_CHECK_CONDITION ;
 scalar_t__ SAM_STAT_GOOD ;
 int TEST_UNIT_READY ;
 int WRITE_10 ;
 int memcpy (int ,unsigned char*,int) ;
 struct scsi_disk* scsi_disk (struct gendisk*) ;
 scalar_t__ scsi_get_resid (struct scsi_cmnd*) ;

__attribute__((used)) static void last_sector_hacks(struct us_data *us, struct scsi_cmnd *srb)
{
 struct gendisk *disk;
 struct scsi_disk *sdkp;
 u32 sector;


 static unsigned char record_not_found[18] = {
  [0] = 0x70,
  [2] = 128,
  [7] = 0x0a,
  [12] = 0x14
 };







 if (!us->use_last_sector_hacks)
  return;


 if (srb->cmnd[0] != READ_10 && srb->cmnd[0] != WRITE_10)
  goto done;


 sector = (srb->cmnd[2] << 24) | (srb->cmnd[3] << 16) |
   (srb->cmnd[4] << 8) | (srb->cmnd[5]);
 disk = srb->request->rq_disk;
 if (!disk)
  goto done;
 sdkp = scsi_disk(disk);
 if (!sdkp)
  goto done;
 if (sector + 1 != sdkp->capacity)
  goto done;

 if (srb->result == SAM_STAT_GOOD && scsi_get_resid(srb) == 0) {





  us->use_last_sector_hacks = 0;

 } else {
  if (++us->last_sector_retries < 3)
   return;
  srb->result = SAM_STAT_CHECK_CONDITION;
  memcpy(srb->sense_buffer, record_not_found,
    sizeof(record_not_found));
 }

 done:





 if (srb->cmnd[0] != TEST_UNIT_READY)
  us->last_sector_retries = 0;
}
