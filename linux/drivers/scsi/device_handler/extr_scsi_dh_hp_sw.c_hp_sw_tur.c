
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scsi_sense_hdr {int dummy; } ;
struct scsi_device {int dummy; } ;
struct hp_sw_dh_data {int path_state; } ;


 int DMA_NONE ;
 int HP_SW_NAME ;
 int HP_SW_PATH_ACTIVE ;
 int HP_SW_RETRIES ;
 int HP_SW_TIMEOUT ;
 int KERN_WARNING ;
 int REQ_FAILFAST_DEV ;
 int REQ_FAILFAST_DRIVER ;
 int REQ_FAILFAST_TRANSPORT ;
 int SCSI_DH_IMM_RETRY ;
 int SCSI_DH_IO ;
 int SCSI_DH_OK ;
 unsigned char TEST_UNIT_READY ;
 int scsi_execute (struct scsi_device*,unsigned char*,int ,int *,int ,int *,struct scsi_sense_hdr*,int ,int ,int,int ,int *) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,int) ;
 int tur_done (struct scsi_device*,struct hp_sw_dh_data*,struct scsi_sense_hdr*) ;

__attribute__((used)) static int hp_sw_tur(struct scsi_device *sdev, struct hp_sw_dh_data *h)
{
 unsigned char cmd[6] = { TEST_UNIT_READY };
 struct scsi_sense_hdr sshdr;
 int ret = SCSI_DH_OK, res;
 u64 req_flags = REQ_FAILFAST_DEV | REQ_FAILFAST_TRANSPORT |
  REQ_FAILFAST_DRIVER;

retry:
 res = scsi_execute(sdev, cmd, DMA_NONE, ((void*)0), 0, ((void*)0), &sshdr,
   HP_SW_TIMEOUT, HP_SW_RETRIES, req_flags, 0, ((void*)0));
 if (res) {
  if (scsi_sense_valid(&sshdr))
   ret = tur_done(sdev, h, &sshdr);
  else {
   sdev_printk(KERN_WARNING, sdev,
        "%s: sending tur failed with %x\n",
        HP_SW_NAME, res);
   ret = SCSI_DH_IO;
  }
 } else {
  h->path_state = HP_SW_PATH_ACTIVE;
  ret = SCSI_DH_OK;
 }
 if (ret == SCSI_DH_IMM_RETRY)
  goto retry;

 return ret;
}
