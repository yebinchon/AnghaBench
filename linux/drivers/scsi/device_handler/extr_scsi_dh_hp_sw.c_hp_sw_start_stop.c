
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scsi_sense_hdr {int sense_key; int asc; int ascq; } ;
struct scsi_device {int dummy; } ;
struct hp_sw_dh_data {struct scsi_device* sdev; } ;


 int DMA_NONE ;
 int HP_SW_NAME ;
 int HP_SW_RETRIES ;
 int HP_SW_TIMEOUT ;
 int KERN_WARNING ;

 int REQ_FAILFAST_DEV ;
 int REQ_FAILFAST_DRIVER ;
 int REQ_FAILFAST_TRANSPORT ;
 int SCSI_DH_IO ;
 int SCSI_DH_OK ;
 int SCSI_DH_RETRY ;
 int START_STOP ;
 int scsi_execute (struct scsi_device*,unsigned char*,int ,int *,int ,int *,struct scsi_sense_hdr*,int ,int,int,int ,int *) ;
 int scsi_sense_valid (struct scsi_sense_hdr*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,...) ;

__attribute__((used)) static int hp_sw_start_stop(struct hp_sw_dh_data *h)
{
 unsigned char cmd[6] = { START_STOP, 0, 0, 0, 1, 0 };
 struct scsi_sense_hdr sshdr;
 struct scsi_device *sdev = h->sdev;
 int res, rc = SCSI_DH_OK;
 int retry_cnt = HP_SW_RETRIES;
 u64 req_flags = REQ_FAILFAST_DEV | REQ_FAILFAST_TRANSPORT |
  REQ_FAILFAST_DRIVER;

retry:
 res = scsi_execute(sdev, cmd, DMA_NONE, ((void*)0), 0, ((void*)0), &sshdr,
   HP_SW_TIMEOUT, HP_SW_RETRIES, req_flags, 0, ((void*)0));
 if (res) {
  if (!scsi_sense_valid(&sshdr)) {
   sdev_printk(KERN_WARNING, sdev,
        "%s: sending start_stop_unit failed, "
        "no sense available\n", HP_SW_NAME);
   return SCSI_DH_IO;
  }
  switch (sshdr.sense_key) {
  case 128:
   if (sshdr.asc == 0x04 && sshdr.ascq == 3) {





    if (--retry_cnt)
     goto retry;
    rc = SCSI_DH_RETRY;
    break;
   }

  default:
   sdev_printk(KERN_WARNING, sdev,
        "%s: sending start_stop_unit failed, "
        "sense %x/%x/%x\n", HP_SW_NAME,
        sshdr.sense_key, sshdr.asc, sshdr.ascq);
   rc = SCSI_DH_IO;
  }
 }
 return rc;
}
