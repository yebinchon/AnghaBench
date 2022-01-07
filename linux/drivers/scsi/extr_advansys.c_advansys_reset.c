
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_7__ {scalar_t__ err_code; int overrun_dma; } ;
struct TYPE_6__ {int adv_dvc_var; TYPE_3__ asc_dvc_var; } ;
struct asc_board {TYPE_2__ dvc_var; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_5__ {struct Scsi_Host* host; } ;
typedef TYPE_3__ ASC_DVC_VAR ;
typedef int ADV_DVC_VAR ;


 int ASC_DBG (int,char*,...) ;

 scalar_t__ ASC_NARROW_BOARD (struct asc_board*) ;
 int ASC_STATS (struct Scsi_Host*,int ) ;

 int AdvISR (int *) ;
 int AdvResetChipAndSB (int *) ;
 int AscInitAsc1000Driver (TYPE_3__*) ;
 int FAILED ;
 int KERN_INFO ;
 int SUCCESS ;
 int reset ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,...) ;
 struct asc_board* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int advansys_reset(struct scsi_cmnd *scp)
{
 struct Scsi_Host *shost = scp->device->host;
 struct asc_board *boardp = shost_priv(shost);
 unsigned long flags;
 int status;
 int ret = SUCCESS;

 ASC_DBG(1, "0x%p\n", scp);

 ASC_STATS(shost, reset);

 scmd_printk(KERN_INFO, scp, "SCSI host reset started...\n");

 if (ASC_NARROW_BOARD(boardp)) {
  ASC_DVC_VAR *asc_dvc = &boardp->dvc_var.asc_dvc_var;


  ASC_DBG(1, "before AscInitAsc1000Driver()\n");
  status = AscInitAsc1000Driver(asc_dvc);


  if (asc_dvc->err_code || !asc_dvc->overrun_dma) {
   scmd_printk(KERN_INFO, scp, "SCSI host reset error: "
        "0x%x, status: 0x%x\n", asc_dvc->err_code,
        status);
   ret = FAILED;
  } else if (status) {
   scmd_printk(KERN_INFO, scp, "SCSI host reset warning: "
        "0x%x\n", status);
  } else {
   scmd_printk(KERN_INFO, scp, "SCSI host reset "
        "successful\n");
  }

  ASC_DBG(1, "after AscInitAsc1000Driver()\n");
 } else {




  ADV_DVC_VAR *adv_dvc = &boardp->dvc_var.adv_dvc_var;




  ASC_DBG(1, "before AdvResetChipAndSB()\n");
  switch (AdvResetChipAndSB(adv_dvc)) {
  case 128:
   scmd_printk(KERN_INFO, scp, "SCSI host reset "
        "successful\n");
   break;
  case 129:
  default:
   scmd_printk(KERN_INFO, scp, "SCSI host reset error\n");
   ret = FAILED;
   break;
  }
  spin_lock_irqsave(shost->host_lock, flags);
  AdvISR(adv_dvc);
  spin_unlock_irqrestore(shost->host_lock, flags);
 }

 ASC_DBG(1, "ret %d\n", ret);

 return ret;
}
