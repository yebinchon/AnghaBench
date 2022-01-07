
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ext_report_lun_entry {int device_flags; int device_type; } ;
struct ctlr_info {int dummy; } ;


 int BMIC_DEVICE_TYPE_ENCLOSURE ;
 int MASKED_DEVICE (int*) ;
 int RPL_DEV_FLAG_NON_DISK ;
 int RPL_DEV_FLAG_UNCONFIG_DISK ;
 int RPL_DEV_FLAG_UNCONFIG_DISK_REPORTING_SUPPORTED ;
 scalar_t__ hpsa_is_disk_spare (struct ctlr_info*,int*) ;

__attribute__((used)) static bool hpsa_skip_device(struct ctlr_info *h, u8 *lunaddrbytes,
    struct ext_report_lun_entry *rle)
{
 u8 device_flags;
 u8 device_type;

 if (!MASKED_DEVICE(lunaddrbytes))
  return 0;

 device_flags = rle->device_flags;
 device_type = rle->device_type;

 if (device_flags & RPL_DEV_FLAG_NON_DISK) {
  if (device_type == BMIC_DEVICE_TYPE_ENCLOSURE)
   return 0;
  return 1;
 }

 if (!(device_flags & RPL_DEV_FLAG_UNCONFIG_DISK_REPORTING_SUPPORTED))
  return 0;

 if (device_flags & RPL_DEV_FLAG_UNCONFIG_DISK)
  return 0;
 if (hpsa_is_disk_spare(h, lunaddrbytes))
  return 1;

 return 0;
}
