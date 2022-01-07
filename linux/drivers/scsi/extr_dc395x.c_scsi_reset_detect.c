
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delay_time; } ;
struct AdapterCtlBlk {int acb_flag; int * active_dcb; TYPE_1__ eeprom; scalar_t__ last_reset; int waiting_timer; } ;


 int DC395x_write8 (struct AdapterCtlBlk*,int ,int ) ;
 int DID_RESET ;
 int DMARESETMODULE ;
 int DO_RSTMODULE ;
 int HZ ;
 int KERN_INFO ;
 int RESET_DETECT ;
 int RESET_DEV ;
 int RESET_DONE ;
 int TRM_S1040_DMA_CONTROL ;
 int TRM_S1040_SCSI_CONTROL ;
 int clear_fifo (struct AdapterCtlBlk*,char*) ;
 int del_timer (int *) ;
 int doing_srb_done (struct AdapterCtlBlk*,int ,int *,int) ;
 int dprintkl (int ,char*,struct AdapterCtlBlk*) ;
 scalar_t__ jiffies ;
 int reset_dev_param (struct AdapterCtlBlk*) ;
 int set_basic_config (struct AdapterCtlBlk*) ;
 scalar_t__ timer_pending (int *) ;
 int udelay (int) ;
 int waiting_process_next (struct AdapterCtlBlk*) ;

__attribute__((used)) static void scsi_reset_detect(struct AdapterCtlBlk *acb)
{
 dprintkl(KERN_INFO, "scsi_reset_detect: acb=%p\n", acb);

 if (timer_pending(&acb->waiting_timer))
  del_timer(&acb->waiting_timer);

 DC395x_write8(acb, TRM_S1040_SCSI_CONTROL, DO_RSTMODULE);
 DC395x_write8(acb, TRM_S1040_DMA_CONTROL, DMARESETMODULE);

 udelay(500);

 acb->last_reset =
     jiffies + 5 * HZ / 2 +
     HZ * acb->eeprom.delay_time;

 clear_fifo(acb, "scsi_reset_detect");
 set_basic_config(acb);



 if (acb->acb_flag & RESET_DEV) {
  acb->acb_flag |= RESET_DONE;
 } else {
  acb->acb_flag |= RESET_DETECT;
  reset_dev_param(acb);
  doing_srb_done(acb, DID_RESET, ((void*)0), 1);

  acb->active_dcb = ((void*)0);
  acb->acb_flag = 0;
  waiting_process_next(acb);
 }
}
