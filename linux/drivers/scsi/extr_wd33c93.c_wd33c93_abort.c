
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wd33c93_regs ;
typedef int uchar ;
struct scsi_cmnd {int result; TYPE_1__* device; int * host_scribble; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct WD33C93_hostdata {scalar_t__ dma; int* busy; scalar_t__ disconnected_Q; int state; struct scsi_cmnd* connected; int (* dma_stop ) (struct Scsi_Host*,struct scsi_cmnd*,int ) ;struct scsi_cmnd* input_Q; int regs; } ;
struct Scsi_Host {int host_no; int irq; scalar_t__ hostdata; } ;
struct TYPE_2__ {size_t id; int lun; struct Scsi_Host* host; } ;


 int ASR_CIP ;
 int ASR_DBR ;
 int ASR_INT ;
 int CTRL_EDI ;
 int CTRL_IDI ;
 int CTRL_POLLED ;
 int DID_ABORT ;
 scalar_t__ D_DMA_OFF ;
 scalar_t__ D_DMA_RUNNING ;
 int FAILED ;
 int SUCCESS ;
 int S_UNCONNECTED ;
 int WD_CMD_ABORT ;
 int WD_CMD_DISCONNECT ;
 int WD_CONTROL ;
 int WD_DATA ;
 int WD_SCSI_STATUS ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int printk (char*,...) ;
 int read_aux_stat (int ) ;
 int read_wd33c93 (int ,int ) ;
 int read_wd33c93_count (int ) ;
 int stub1 (struct scsi_cmnd*) ;
 int stub2 (struct Scsi_Host*,struct scsi_cmnd*,int ) ;
 int stub3 (struct scsi_cmnd*) ;
 int wd33c93_execute (struct Scsi_Host*) ;
 int write_wd33c93 (int ,int ,int) ;
 int write_wd33c93_cmd (int ,int ) ;

int
wd33c93_abort(struct scsi_cmnd * cmd)
{
 struct Scsi_Host *instance;
 struct WD33C93_hostdata *hostdata;
 wd33c93_regs regs;
 struct scsi_cmnd *tmp, *prev;

 disable_irq(cmd->device->host->irq);

 instance = cmd->device->host;
 hostdata = (struct WD33C93_hostdata *) instance->hostdata;
 regs = hostdata->regs;






 tmp = (struct scsi_cmnd *) hostdata->input_Q;
 prev = ((void*)0);
 while (tmp) {
  if (tmp == cmd) {
   if (prev)
    prev->host_scribble = cmd->host_scribble;
   else
    hostdata->input_Q =
        (struct scsi_cmnd *) cmd->host_scribble;
   cmd->host_scribble = ((void*)0);
   cmd->result = DID_ABORT << 16;
   printk
       ("scsi%d: Abort - removing command from input_Q. ",
        instance->host_no);
   enable_irq(cmd->device->host->irq);
   cmd->scsi_done(cmd);
   return SUCCESS;
  }
  prev = tmp;
  tmp = (struct scsi_cmnd *) tmp->host_scribble;
 }
 if (hostdata->connected == cmd) {
  uchar sr, asr;
  unsigned long timeout;

  printk("scsi%d: Aborting connected command - ",
         instance->host_no);

  printk("stopping DMA - ");
  if (hostdata->dma == D_DMA_RUNNING) {
   hostdata->dma_stop(instance, cmd, 0);
   hostdata->dma = D_DMA_OFF;
  }

  printk("sending wd33c93 ABORT command - ");
  write_wd33c93(regs, WD_CONTROL,
         CTRL_IDI | CTRL_EDI | CTRL_POLLED);
  write_wd33c93_cmd(regs, WD_CMD_ABORT);



  printk("flushing fifo - ");
  timeout = 1000000;
  do {
   asr = read_aux_stat(regs);
   if (asr & ASR_DBR)
    read_wd33c93(regs, WD_DATA);
  } while (!(asr & ASR_INT) && timeout-- > 0);
  sr = read_wd33c93(regs, WD_SCSI_STATUS);
  printk
      ("asr=%02x, sr=%02x, %ld bytes un-transferred (timeout=%ld) - ",
       asr, sr, read_wd33c93_count(regs), timeout);







  printk("sending wd33c93 DISCONNECT command - ");
  write_wd33c93_cmd(regs, WD_CMD_DISCONNECT);

  timeout = 1000000;
  asr = read_aux_stat(regs);
  while ((asr & ASR_CIP) && timeout-- > 0)
   asr = read_aux_stat(regs);
  sr = read_wd33c93(regs, WD_SCSI_STATUS);
  printk("asr=%02x, sr=%02x.", asr, sr);

  hostdata->busy[cmd->device->id] &= ~(1 << (cmd->device->lun & 0xff));
  hostdata->connected = ((void*)0);
  hostdata->state = S_UNCONNECTED;
  cmd->result = DID_ABORT << 16;


  wd33c93_execute(instance);

  enable_irq(cmd->device->host->irq);
  cmd->scsi_done(cmd);
  return SUCCESS;
 }







 tmp = (struct scsi_cmnd *) hostdata->disconnected_Q;
 while (tmp) {
  if (tmp == cmd) {
   printk
       ("scsi%d: Abort - command found on disconnected_Q - ",
        instance->host_no);
   printk("Abort SNOOZE. ");
   enable_irq(cmd->device->host->irq);
   return FAILED;
  }
  tmp = (struct scsi_cmnd *) tmp->host_scribble;
 }
 wd33c93_execute(instance);

 enable_irq(cmd->device->host->irq);
 printk("scsi%d: warning : SCSI command probably completed successfully"
        "         before abortion. ", instance->host_no);
 return FAILED;
}
