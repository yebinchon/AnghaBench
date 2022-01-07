
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int capacity; struct scsi_device* device; int physical_block_size; } ;
struct scsi_device {int sector_size; int use_16_for_rw; int request_queue; scalar_t__ guess_capacity; scalar_t__ fix_capacity; scalar_t__ try_rc_10_first; } ;
typedef int sector_t ;


 int ENODEV ;
 int EOVERFLOW ;
 int KERN_INFO ;
 int KERN_NOTICE ;
 int blk_queue_logical_block_size (int ,int) ;
 int blk_queue_physical_block_size (int ,int ) ;
 int read_capacity_10 (struct scsi_disk*,struct scsi_device*,unsigned char*) ;
 int read_capacity_16 (struct scsi_disk*,struct scsi_device*,unsigned char*) ;
 int sd_printk (int ,struct scsi_disk*,char*,...) ;
 scalar_t__ sd_try_rc16_first (struct scsi_device*) ;

__attribute__((used)) static void
sd_read_capacity(struct scsi_disk *sdkp, unsigned char *buffer)
{
 int sector_size;
 struct scsi_device *sdp = sdkp->device;

 if (sd_try_rc16_first(sdp)) {
  sector_size = read_capacity_16(sdkp, sdp, buffer);
  if (sector_size == -EOVERFLOW)
   goto got_data;
  if (sector_size == -ENODEV)
   return;
  if (sector_size < 0)
   sector_size = read_capacity_10(sdkp, sdp, buffer);
  if (sector_size < 0)
   return;
 } else {
  sector_size = read_capacity_10(sdkp, sdp, buffer);
  if (sector_size == -EOVERFLOW)
   goto got_data;
  if (sector_size < 0)
   return;
  if ((sizeof(sdkp->capacity) > 4) &&
      (sdkp->capacity > 0xffffffffULL)) {
   int old_sector_size = sector_size;
   sd_printk(KERN_NOTICE, sdkp, "Very big device. "
     "Trying to use READ CAPACITY(16).\n");
   sector_size = read_capacity_16(sdkp, sdp, buffer);
   if (sector_size < 0) {
    sd_printk(KERN_NOTICE, sdkp,
     "Using 0xffffffff as device size\n");
    sdkp->capacity = 1 + (sector_t) 0xffffffff;
    sector_size = old_sector_size;
    goto got_data;
   }

   sdp->try_rc_10_first = 0;
  }
 }
 if (sdp->fix_capacity ||
     (sdp->guess_capacity && (sdkp->capacity & 0x01))) {
  sd_printk(KERN_INFO, sdkp, "Adjusting the sector count "
    "from its reported value: %llu\n",
    (unsigned long long) sdkp->capacity);
  --sdkp->capacity;
 }

got_data:
 if (sector_size == 0) {
  sector_size = 512;
  sd_printk(KERN_NOTICE, sdkp, "Sector size 0 reported, "
     "assuming 512.\n");
 }

 if (sector_size != 512 &&
     sector_size != 1024 &&
     sector_size != 2048 &&
     sector_size != 4096) {
  sd_printk(KERN_NOTICE, sdkp, "Unsupported sector size %d.\n",
     sector_size);






  sdkp->capacity = 0;






  sector_size = 512;
 }
 blk_queue_logical_block_size(sdp->request_queue, sector_size);
 blk_queue_physical_block_size(sdp->request_queue,
          sdkp->physical_block_size);
 sdkp->device->sector_size = sector_size;

 if (sdkp->capacity > 0xffffffff)
  sdp->use_16_for_rw = 1;

}
