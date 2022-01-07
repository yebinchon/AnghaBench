
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int zone_blocks; int device; } ;
typedef int sector_t ;


 int logical_to_sectors (int ,int ) ;

__attribute__((used)) static inline sector_t sd_zbc_zone_sectors(struct scsi_disk *sdkp)
{
 return logical_to_sectors(sdkp->device, sdkp->zone_blocks);
}
