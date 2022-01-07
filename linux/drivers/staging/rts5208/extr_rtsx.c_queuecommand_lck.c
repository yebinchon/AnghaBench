
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct rtsx_dev {int cmnd_ready; TYPE_1__* pci; struct rtsx_chip* chip; } ;
struct rtsx_chip {struct scsi_cmnd* srb; } ;
struct TYPE_4__ {int host; } ;
struct TYPE_3__ {int dev; } ;


 int DID_NO_CONNECT ;
 int RTSX_STAT_DISCONNECT ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int complete (int *) ;
 int dev_err (int *,char*,struct scsi_cmnd*) ;
 int dev_info (int *,char*) ;
 struct rtsx_dev* host_to_rtsx (int ) ;
 scalar_t__ rtsx_chk_stat (struct rtsx_chip*,int ) ;

__attribute__((used)) static int queuecommand_lck(struct scsi_cmnd *srb,
       void (*done)(struct scsi_cmnd *))
{
 struct rtsx_dev *dev = host_to_rtsx(srb->device->host);
 struct rtsx_chip *chip = dev->chip;


 if (chip->srb) {
  dev_err(&dev->pci->dev, "Error: chip->srb = %p\n",
   chip->srb);
  return SCSI_MLQUEUE_HOST_BUSY;
 }


 if (rtsx_chk_stat(chip, RTSX_STAT_DISCONNECT)) {
  dev_info(&dev->pci->dev, "Fail command during disconnect\n");
  srb->result = DID_NO_CONNECT << 16;
  done(srb);
  return 0;
 }


 srb->scsi_done = done;
 chip->srb = srb;
 complete(&dev->cmnd_ready);

 return 0;
}
