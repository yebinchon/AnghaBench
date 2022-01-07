
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int capacity; int zone_blocks; scalar_t__ nr_zones; } ;


 int KERN_NOTICE ;
 int sd_is_zoned (struct scsi_disk*) ;
 int sd_printk (int ,struct scsi_disk*,char*,scalar_t__,int) ;

void sd_zbc_print_zones(struct scsi_disk *sdkp)
{
 if (!sd_is_zoned(sdkp) || !sdkp->capacity)
  return;

 if (sdkp->capacity & (sdkp->zone_blocks - 1))
  sd_printk(KERN_NOTICE, sdkp,
     "%u zones of %u logical blocks + 1 runt zone\n",
     sdkp->nr_zones - 1,
     sdkp->zone_blocks);
 else
  sd_printk(KERN_NOTICE, sdkp,
     "%u zones of %u logical blocks\n",
     sdkp->nr_zones,
     sdkp->zone_blocks);
}
