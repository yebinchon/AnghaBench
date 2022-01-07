
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {int urswrz; scalar_t__ first_scan; void* zones_max_open; void* zones_optimal_nonseq; void* zones_optimal_open; TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int ENODEV ;
 int KERN_NOTICE ;
 scalar_t__ TYPE_ZBC ;
 void* get_unaligned_be32 (unsigned char*) ;
 scalar_t__ scsi_get_vpd_page (TYPE_1__*,int,unsigned char*,int) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;

__attribute__((used)) static int sd_zbc_check_zoned_characteristics(struct scsi_disk *sdkp,
           unsigned char *buf)
{

 if (scsi_get_vpd_page(sdkp->device, 0xb6, buf, 64)) {
  sd_printk(KERN_NOTICE, sdkp,
     "Read zoned characteristics VPD page failed\n");
  return -ENODEV;
 }

 if (sdkp->device->type != TYPE_ZBC) {

  sdkp->urswrz = 1;
  sdkp->zones_optimal_open = get_unaligned_be32(&buf[8]);
  sdkp->zones_optimal_nonseq = get_unaligned_be32(&buf[12]);
  sdkp->zones_max_open = 0;
 } else {

  sdkp->urswrz = buf[4] & 1;
  sdkp->zones_optimal_open = 0;
  sdkp->zones_optimal_nonseq = 0;
  sdkp->zones_max_open = get_unaligned_be32(&buf[16]);
 }






 if (!sdkp->urswrz) {
  if (sdkp->first_scan)
   sd_printk(KERN_NOTICE, sdkp,
     "constrained reads devices are not supported\n");
  return -ENODEV;
 }

 return 0;
}
