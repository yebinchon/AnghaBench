
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int sense_key; int asc; int ascq; } ;
struct scsi_device {int dummy; } ;
struct hp_sw_dh_data {int path_state; } ;


 int HP_SW_NAME ;
 int HP_SW_PATH_PASSIVE ;
 int KERN_WARNING ;

 int SCSI_DH_IMM_RETRY ;
 int SCSI_DH_IO ;
 int SCSI_DH_OK ;

 int sdev_printk (int ,struct scsi_device*,char*,int ,int,int,int) ;

__attribute__((used)) static int tur_done(struct scsi_device *sdev, struct hp_sw_dh_data *h,
      struct scsi_sense_hdr *sshdr)
{
 int ret = SCSI_DH_IO;

 switch (sshdr->sense_key) {
 case 128:
  ret = SCSI_DH_IMM_RETRY;
  break;
 case 129:
  if (sshdr->asc == 0x04 && sshdr->ascq == 2) {





   h->path_state = HP_SW_PATH_PASSIVE;
   ret = SCSI_DH_OK;
   break;
  }

 default:
  sdev_printk(KERN_WARNING, sdev,
      "%s: sending tur failed, sense %x/%x/%x\n",
      HP_SW_NAME, sshdr->sense_key, sshdr->asc,
      sshdr->ascq);
  break;
 }
 return ret;
}
