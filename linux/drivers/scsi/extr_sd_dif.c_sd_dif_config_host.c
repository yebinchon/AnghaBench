
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct t10_pi_tuple {int dummy; } ;
struct scsi_disk {scalar_t__ protection_type; int ATO; struct scsi_device* device; struct gendisk* disk; } ;
struct scsi_device {int host; } ;
struct gendisk {int dummy; } ;
struct blk_integrity {int tuple_size; int tag_size; int flags; TYPE_1__* profile; } ;
typedef int bi ;
struct TYPE_5__ {int name; } ;


 int BLK_INTEGRITY_DEVICE_CAPABLE ;
 int BLK_INTEGRITY_IP_CHECKSUM ;
 int KERN_NOTICE ;
 int SHOST_DIX_GUARD_IP ;
 scalar_t__ T10_PI_TYPE3_PROTECTION ;
 int blk_integrity_register (struct gendisk*,struct blk_integrity*) ;
 int memset (struct blk_integrity*,int ,int) ;
 int scsi_host_dif_capable (int ,scalar_t__) ;
 int scsi_host_dix_capable (int ,scalar_t__) ;
 int scsi_host_get_guard (int ) ;
 int sd_printk (int ,struct scsi_disk*,char*,int) ;
 TYPE_1__ t10_pi_type1_crc ;
 TYPE_1__ t10_pi_type1_ip ;
 TYPE_1__ t10_pi_type3_crc ;
 TYPE_1__ t10_pi_type3_ip ;

void sd_dif_config_host(struct scsi_disk *sdkp)
{
 struct scsi_device *sdp = sdkp->device;
 struct gendisk *disk = sdkp->disk;
 u8 type = sdkp->protection_type;
 struct blk_integrity bi;
 int dif, dix;

 dif = scsi_host_dif_capable(sdp->host, type);
 dix = scsi_host_dix_capable(sdp->host, type);

 if (!dix && scsi_host_dix_capable(sdp->host, 0)) {
  dif = 0; dix = 1;
 }

 if (!dix)
  return;

 memset(&bi, 0, sizeof(bi));


 if (scsi_host_get_guard(sdkp->device->host) & SHOST_DIX_GUARD_IP) {
  if (type == T10_PI_TYPE3_PROTECTION)
   bi.profile = &t10_pi_type3_ip;
  else
   bi.profile = &t10_pi_type1_ip;

  bi.flags |= BLK_INTEGRITY_IP_CHECKSUM;
 } else
  if (type == T10_PI_TYPE3_PROTECTION)
   bi.profile = &t10_pi_type3_crc;
  else
   bi.profile = &t10_pi_type1_crc;

 bi.tuple_size = sizeof(struct t10_pi_tuple);
 sd_printk(KERN_NOTICE, sdkp,
    "Enabling DIX %s protection\n", bi.profile->name);

 if (dif && type) {
  bi.flags |= BLK_INTEGRITY_DEVICE_CAPABLE;

  if (!sdkp->ATO)
   goto out;

  if (type == T10_PI_TYPE3_PROTECTION)
   bi.tag_size = sizeof(u16) + sizeof(u32);
  else
   bi.tag_size = sizeof(u16);

  sd_printk(KERN_NOTICE, sdkp, "DIF application tag size %u\n",
     bi.tag_size);
 }

out:
 blk_integrity_register(disk, &bi);
}
