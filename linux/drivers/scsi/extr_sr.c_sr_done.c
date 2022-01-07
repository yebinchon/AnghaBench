
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int result; int* sense_buffer; TYPE_2__* request; } ;
struct scsi_cd {int disk; int capacity; TYPE_1__* device; } ;
struct TYPE_4__ {int * bio; int rq_disk; } ;
struct TYPE_3__ {int sector_size; } ;



 int KERN_INFO ;



 int bio_sectors (int *) ;
 int blk_rq_pos (TYPE_2__*) ;
 scalar_t__ driver_byte (int) ;
 long get_capacity (int ) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 struct scsi_cd* scsi_cd (int ) ;
 int set_capacity (int ,long) ;

__attribute__((used)) static int sr_done(struct scsi_cmnd *SCpnt)
{
 int result = SCpnt->result;
 int this_count = scsi_bufflen(SCpnt);
 int good_bytes = (result == 0 ? this_count : 0);
 int block_sectors = 0;
 long error_sector;
 struct scsi_cd *cd = scsi_cd(SCpnt->request->rq_disk);
 if (driver_byte(result) != 0 &&
     (SCpnt->sense_buffer[0] & 0x7f) == 0x70) {
  switch (SCpnt->sense_buffer[2]) {
  case 130:
  case 128:
  case 131:
   if (!(SCpnt->sense_buffer[0] & 0x90))
    break;
   error_sector = (SCpnt->sense_buffer[3] << 24) |
    (SCpnt->sense_buffer[4] << 16) |
    (SCpnt->sense_buffer[5] << 8) |
    SCpnt->sense_buffer[6];
   if (SCpnt->request->bio != ((void*)0))
    block_sectors =
     bio_sectors(SCpnt->request->bio);
   if (block_sectors < 4)
    block_sectors = 4;
   if (cd->device->sector_size == 2048)
    error_sector <<= 2;
   error_sector &= ~(block_sectors - 1);
   good_bytes = (error_sector -
          blk_rq_pos(SCpnt->request)) << 9;
   if (good_bytes < 0 || good_bytes >= this_count)
    good_bytes = 0;
   if (error_sector < get_capacity(cd->disk) &&
       cd->capacity - error_sector < 4 * 75)
    set_capacity(cd->disk, error_sector);
   break;

  case 129:
   good_bytes = this_count;
   break;

  default:
   break;
  }
 }

 return good_bytes;
}
