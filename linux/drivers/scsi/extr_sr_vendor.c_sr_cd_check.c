
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct packet_command {int* cmd; unsigned char* buffer; int buflen; int quiet; void* timeout; void* data_direction; } ;
struct cdrom_device_info {int mask; TYPE_3__* handle; } ;
struct TYPE_9__ {int mask; } ;
struct TYPE_10__ {int vendor; unsigned long ms_offset; int xa_flag; TYPE_1__* device; TYPE_2__ cdi; } ;
struct TYPE_8__ {int sector_size; } ;
typedef TYPE_3__ Scsi_CD ;


 int CDC_MULTI_SESSION ;
 scalar_t__ CDS_AUDIO ;
 unsigned long CD_FRAMES ;
 unsigned long CD_MSF_OFFSET ;
 unsigned long CD_SECS ;
 void* DMA_FROM_DEVICE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int KERN_DEBUG ;
 int KERN_INFO ;
 int KERN_WARNING ;
 void* READ_TOC ;


 void* VENDOR_TIMEOUT ;


 unsigned long bcd2bin (unsigned char) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int) ;
 int memset (struct packet_command*,int ,int) ;
 scalar_t__ sr_disk_status (struct cdrom_device_info*) ;
 int sr_do_ioctl (TYPE_3__*,struct packet_command*) ;
 int sr_is_xa (TYPE_3__*) ;
 int sr_printk (int ,TYPE_3__*,char*,...) ;
 int sr_set_blocklength (TYPE_3__*,int) ;

int sr_cd_check(struct cdrom_device_info *cdi)
{
 Scsi_CD *cd = cdi->handle;
 unsigned long sector;
 unsigned char *buffer;
 struct packet_command cgc;
 int rc, no_multi;

 if (cd->cdi.mask & CDC_MULTI_SESSION)
  return 0;

 buffer = kmalloc(512, GFP_KERNEL | GFP_DMA);
 if (!buffer)
  return -ENOMEM;

 sector = 0;
 no_multi = 0;
 rc = 0;

 memset(&cgc, 0, sizeof(struct packet_command));

 switch (cd->vendor) {

 case 130:
  cgc.cmd[0] = READ_TOC;
  cgc.cmd[8] = 12;
  cgc.cmd[9] = 0x40;
  cgc.buffer = buffer;
  cgc.buflen = 12;
  cgc.quiet = 1;
  cgc.data_direction = DMA_FROM_DEVICE;
  cgc.timeout = VENDOR_TIMEOUT;
  rc = sr_do_ioctl(cd, &cgc);
  if (rc != 0)
   break;
  if ((buffer[0] << 8) + buffer[1] < 0x0a) {
   sr_printk(KERN_INFO, cd, "Hmm, seems the drive "
      "doesn't support multisession CD's\n");
   no_multi = 1;
   break;
  }
  sector = buffer[11] + (buffer[10] << 8) +
      (buffer[9] << 16) + (buffer[8] << 24);
  if (buffer[6] <= 1) {

   sector = 0;
  }
  break;
 default:

  sr_printk(KERN_WARNING, cd,
     "unknown vendor code (%i), not initialized ?\n",
     cd->vendor);
  sector = 0;
  no_multi = 1;
  break;
 }
 cd->ms_offset = sector;
 cd->xa_flag = 0;
 if (CDS_AUDIO != sr_disk_status(cdi) && 1 == sr_is_xa(cd))
  cd->xa_flag = 1;

 if (2048 != cd->device->sector_size) {
  sr_set_blocklength(cd, 2048);
 }
 if (no_multi)
  cdi->mask |= CDC_MULTI_SESSION;






 kfree(buffer);
 return rc;
}
