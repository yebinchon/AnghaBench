
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_6__ {int delay_time; } ;
struct AdapterCtlBlk {scalar_t__ acb_flag; int * active_dcb; TYPE_3__ eeprom; scalar_t__ last_reset; int waiting_timer; } ;
struct TYPE_5__ {scalar_t__ lun; int id; TYPE_1__* host; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;


 int CLRXFIFO ;
 int DC395x_read8 (struct AdapterCtlBlk*,int ) ;
 int DC395x_write8 (struct AdapterCtlBlk*,int ,int) ;
 int DID_RESET ;
 int DMARESETMODULE ;
 int DO_RSTMODULE ;
 int HZ ;
 int KERN_INFO ;
 int SUCCESS ;
 int TRM_S1040_DMA_CONTROL ;
 int TRM_S1040_DMA_INTEN ;
 int TRM_S1040_SCSI_CONTROL ;
 int TRM_S1040_SCSI_INTEN ;
 int TRM_S1040_SCSI_INTSTATUS ;
 int clear_fifo (struct AdapterCtlBlk*,char*) ;
 int del_timer (int *) ;
 int doing_srb_done (struct AdapterCtlBlk*,int ,struct scsi_cmnd*,int ) ;
 int dprintkl (int ,char*,struct scsi_cmnd*,int ,int ,struct scsi_cmnd*) ;
 scalar_t__ jiffies ;
 int reset_dev_param (struct AdapterCtlBlk*) ;
 int reset_scsi_bus (struct AdapterCtlBlk*) ;
 int set_basic_config (struct AdapterCtlBlk*) ;
 scalar_t__ timer_pending (int *) ;
 int udelay (int) ;
 int waiting_process_next (struct AdapterCtlBlk*) ;

__attribute__((used)) static int __dc395x_eh_bus_reset(struct scsi_cmnd *cmd)
{
 struct AdapterCtlBlk *acb =
  (struct AdapterCtlBlk *)cmd->device->host->hostdata;
 dprintkl(KERN_INFO,
  "eh_bus_reset: (0%p) target=<%02i-%i> cmd=%p\n",
  cmd, cmd->device->id, (u8)cmd->device->lun, cmd);

 if (timer_pending(&acb->waiting_timer))
  del_timer(&acb->waiting_timer);




 DC395x_write8(acb, TRM_S1040_DMA_INTEN, 0x00);
 DC395x_write8(acb, TRM_S1040_SCSI_INTEN, 0x00);
 DC395x_write8(acb, TRM_S1040_SCSI_CONTROL, DO_RSTMODULE);
 DC395x_write8(acb, TRM_S1040_DMA_CONTROL, DMARESETMODULE);

 reset_scsi_bus(acb);
 udelay(500);


 acb->last_reset =
     jiffies + 3 * HZ / 2 +
     HZ * acb->eeprom.delay_time;





 DC395x_write8(acb, TRM_S1040_DMA_CONTROL, CLRXFIFO);
 clear_fifo(acb, "eh_bus_reset");

 DC395x_read8(acb, TRM_S1040_SCSI_INTSTATUS);
 set_basic_config(acb);

 reset_dev_param(acb);
 doing_srb_done(acb, DID_RESET, cmd, 0);
 acb->active_dcb = ((void*)0);
 acb->acb_flag = 0;
 waiting_process_next(acb);

 return SUCCESS;
}
