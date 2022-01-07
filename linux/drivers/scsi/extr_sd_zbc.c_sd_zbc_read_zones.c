
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct scsi_disk {scalar_t__ zone_blocks; unsigned int nr_zones; scalar_t__ capacity; scalar_t__ first_scan; TYPE_1__* device; struct gendisk* disk; } ;
struct gendisk {TYPE_2__* queue; } ;
struct TYPE_6__ {unsigned int nr_zones; } ;
struct TYPE_5__ {int use_16_for_rw; scalar_t__ use_10_for_rw; } ;


 int ELEVATOR_F_ZBD_SEQ_WRITE ;
 int QUEUE_FLAG_ZONE_RESETALL ;
 int blk_queue_chunk_sectors (TYPE_2__*,int ) ;
 int blk_queue_flag_set (int ,TYPE_2__*) ;
 int blk_queue_required_elevator_features (TYPE_2__*,int ) ;
 int blk_revalidate_disk_zones (struct gendisk*) ;
 unsigned int ilog2 (scalar_t__) ;
 int logical_to_sectors (TYPE_1__*,scalar_t__) ;
 unsigned int round_up (scalar_t__,scalar_t__) ;
 int sd_is_zoned (struct scsi_disk*) ;
 int sd_zbc_check_zoned_characteristics (struct scsi_disk*,unsigned char*) ;
 int sd_zbc_check_zones (struct scsi_disk*,scalar_t__*) ;

int sd_zbc_read_zones(struct scsi_disk *sdkp, unsigned char *buf)
{
 struct gendisk *disk = sdkp->disk;
 unsigned int nr_zones;
 u32 zone_blocks = 0;
 int ret;

 if (!sd_is_zoned(sdkp))




  return 0;


 ret = sd_zbc_check_zoned_characteristics(sdkp, buf);
 if (ret)
  goto err;





 ret = sd_zbc_check_zones(sdkp, &zone_blocks);
 if (ret != 0)
  goto err;


 blk_queue_chunk_sectors(sdkp->disk->queue,
   logical_to_sectors(sdkp->device, zone_blocks));
 blk_queue_flag_set(QUEUE_FLAG_ZONE_RESETALL, sdkp->disk->queue);
 blk_queue_required_elevator_features(sdkp->disk->queue,
          ELEVATOR_F_ZBD_SEQ_WRITE);
 nr_zones = round_up(sdkp->capacity, zone_blocks) >> ilog2(zone_blocks);


 sdkp->device->use_16_for_rw = 1;
 sdkp->device->use_10_for_rw = 0;






 if (sdkp->first_scan) {
  sdkp->zone_blocks = zone_blocks;
  sdkp->nr_zones = nr_zones;
  return 0;
 }

 if (sdkp->zone_blocks != zone_blocks ||
     sdkp->nr_zones != nr_zones ||
     disk->queue->nr_zones != nr_zones) {
  ret = blk_revalidate_disk_zones(disk);
  if (ret != 0)
   goto err;
  sdkp->zone_blocks = zone_blocks;
  sdkp->nr_zones = nr_zones;
 }

 return 0;

err:
 sdkp->capacity = 0;

 return ret;
}
