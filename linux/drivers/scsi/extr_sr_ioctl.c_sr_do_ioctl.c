
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_sense_hdr {int sense_key; int asc; int ascq; } ;
struct scsi_device {int changed; } ;
struct packet_command {int stat; int quiet; int timeout; int buflen; int buffer; int data_direction; int cmd; struct scsi_sense_hdr* sshdr; } ;
struct TYPE_4__ {struct scsi_device* device; } ;
typedef TYPE_1__ Scsi_CD ;


 int EDRIVE_CANT_DO_THIS ;
 int EIO ;
 int ENODEV ;
 int ENOMEDIUM ;

 int IOCTL_RETRIES ;
 int KERN_INFO ;


 scalar_t__ driver_byte (int) ;
 int scsi_block_when_processing_errors (struct scsi_device*) ;
 int scsi_execute (struct scsi_device*,int ,int ,int ,int ,int *,struct scsi_sense_hdr*,int ,int ,int ,int ,int *) ;
 int sr_printk (int ,TYPE_1__*,char*) ;
 int ssleep (int) ;

int sr_do_ioctl(Scsi_CD *cd, struct packet_command *cgc)
{
 struct scsi_device *SDev;
 struct scsi_sense_hdr local_sshdr, *sshdr = &local_sshdr;
 int result, err = 0, retries = 0;

 SDev = cd->device;

 if (cgc->sshdr)
  sshdr = cgc->sshdr;

      retry:
 if (!scsi_block_when_processing_errors(SDev)) {
  err = -ENODEV;
  goto out;
 }

 result = scsi_execute(SDev, cgc->cmd, cgc->data_direction,
         cgc->buffer, cgc->buflen, ((void*)0), sshdr,
         cgc->timeout, IOCTL_RETRIES, 0, 0, ((void*)0));


 if (driver_byte(result) != 0) {
  switch (sshdr->sense_key) {
  case 128:
   SDev->changed = 1;
   if (!cgc->quiet)
    sr_printk(KERN_INFO, cd,
       "disc change detected.\n");
   if (retries++ < 10)
    goto retry;
   err = -ENOMEDIUM;
   break;
  case 129:
   if (sshdr->asc == 0x04 &&
       sshdr->ascq == 0x01) {

    if (!cgc->quiet)
     sr_printk(KERN_INFO, cd,
        "CDROM not ready yet.\n");
    if (retries++ < 10) {

     ssleep(2);
     goto retry;
    } else {

     err = -ENOMEDIUM;
     break;
    }
   }
   if (!cgc->quiet)
    sr_printk(KERN_INFO, cd,
       "CDROM not ready.  Make sure there "
       "is a disc in the drive.\n");
   err = -ENOMEDIUM;
   break;
  case 130:
   err = -EIO;
   if (sshdr->asc == 0x20 &&
       sshdr->ascq == 0x00)

    err = -EDRIVE_CANT_DO_THIS;
   break;
  default:
   err = -EIO;
  }
 }


      out:
 cgc->stat = err;
 return err;
}
