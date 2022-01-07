
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {scalar_t__ capacity; int physical_block_size; int first_scan; TYPE_1__* device; } ;
typedef scalar_t__ sector_t ;
typedef int cap_str_2 ;
typedef int cap_str_10 ;
struct TYPE_2__ {int sector_size; } ;


 int KERN_NOTICE ;
 int STRING_UNITS_10 ;
 int STRING_UNITS_2 ;
 int sd_printk (int ,struct scsi_disk*,char*,int,...) ;
 int sd_zbc_print_zones (struct scsi_disk*) ;
 int string_get_size (scalar_t__,int,int ,char*,int) ;

__attribute__((used)) static void
sd_print_capacity(struct scsi_disk *sdkp,
    sector_t old_capacity)
{
 int sector_size = sdkp->device->sector_size;
 char cap_str_2[10], cap_str_10[10];

 if (!sdkp->first_scan && old_capacity == sdkp->capacity)
  return;

 string_get_size(sdkp->capacity, sector_size,
   STRING_UNITS_2, cap_str_2, sizeof(cap_str_2));
 string_get_size(sdkp->capacity, sector_size,
   STRING_UNITS_10, cap_str_10, sizeof(cap_str_10));

 sd_printk(KERN_NOTICE, sdkp,
    "%llu %d-byte logical blocks: (%s/%s)\n",
    (unsigned long long)sdkp->capacity,
    sector_size, cap_str_10, cap_str_2);

 if (sdkp->physical_block_size != sector_size)
  sd_printk(KERN_NOTICE, sdkp,
     "%u-byte physical blocks\n",
     sdkp->physical_block_size);

 sd_zbc_print_zones(sdkp);
}
