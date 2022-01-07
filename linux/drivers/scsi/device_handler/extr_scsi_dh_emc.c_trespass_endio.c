
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int sense_key; int asc; int ascq; } ;
struct scsi_device {int dummy; } ;


 int CLARIION_NAME ;
 int KERN_ERR ;
 int KERN_INFO ;
 int SCSI_DH_DEV_FAILED ;
 int SCSI_DH_DEV_TEMP_BUSY ;
 int SCSI_DH_IO ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,...) ;

__attribute__((used)) static int trespass_endio(struct scsi_device *sdev,
     struct scsi_sense_hdr *sshdr)
{
 int err = SCSI_DH_IO;

 sdev_printk(KERN_ERR, sdev, "%s: Found valid sense data 0x%2x, "
      "0x%2x, 0x%2x while sending CLARiiON trespass "
      "command.\n", CLARIION_NAME, sshdr->sense_key,
      sshdr->asc, sshdr->ascq);

 if (sshdr->sense_key == 0x05 && sshdr->asc == 0x04 &&
     sshdr->ascq == 0x00) {




  sdev_printk(KERN_INFO, sdev, "%s: Array Based Copy in "
       "progress while sending CLARiiON trespass "
       "command.\n", CLARIION_NAME);
  err = SCSI_DH_DEV_TEMP_BUSY;
 } else if (sshdr->sense_key == 0x02 && sshdr->asc == 0x04 &&
     sshdr->ascq == 0x03) {




  sdev_printk(KERN_INFO, sdev, "%s: Detected in-progress "
       "ucode upgrade NDU operation while sending "
       "CLARiiON trespass command.\n", CLARIION_NAME);
  err = SCSI_DH_DEV_TEMP_BUSY;
 } else
  err = SCSI_DH_DEV_FAILED;
 return err;
}
