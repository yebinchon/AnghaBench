
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int Message; int Status; int phase; int have_data_in; } ;
struct scsi_cmnd {int result; int cmd_len; int* cmnd; TYPE_3__ SCp; TYPE_1__* device; } ;
struct TYPE_14__ {TYPE_4__* host; } ;
typedef TYPE_5__ scsi_info_t ;
struct TYPE_15__ {unsigned int BaseAddress; scalar_t__ TimerCount; scalar_t__ SelectionTimeOut; int MsgLen; int* MsgBuffer; TYPE_2__* Sync; struct scsi_cmnd* CurrentSC; } ;
typedef TYPE_6__ nsp_hw_data ;
typedef int irqreturn_t ;
struct TYPE_13__ {scalar_t__ hostdata; } ;
struct TYPE_11__ {unsigned int SyncNegotiation; int SyncPeriod; int SyncOffset; } ;
struct TYPE_10__ {unsigned char id; unsigned char lun; } ;


 int ACKENB ;
 int AUTODIRECTION ;
 int AUTO_COMMAND_GO ;
 unsigned char BUSMON_BSY ;
 unsigned char BUSMON_PHASE_MASK ;
 unsigned char BUSMON_REQ ;







 int CLEAR_COMMAND_POINTER ;
 int COMMANDCTRL ;
 int COMMANDDATA ;
 int DID_ABORT ;
 int DID_ERROR ;
 int DID_OK ;
 int DID_RESET ;
 int DID_TIME_OUT ;
 scalar_t__ FALSE ;
 int IDENTIFY (int ,unsigned char) ;
 int IO_IN ;
 int IO_OUT ;
 int IRQCONTROL ;
 int IRQCONTROL_FIFO_CLEAR ;
 int IRQCONTROL_IRQDISABLE ;
 int IRQCONTROL_RESELECT_CLEAR ;
 int IRQCONTROL_TIMER_CLEAR ;
 int IRQPHASESENCE ;
 int IRQSTATUS ;
 unsigned char IRQSTATUS_FIFO ;
 unsigned char IRQSTATUS_MASK ;
 unsigned char IRQSTATUS_SCSI ;
 unsigned char IRQSTATUS_TIMER ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KERN_DEBUG ;
 int KERN_ERR ;
 unsigned char LATCHED_BUS_FREE ;
 scalar_t__ MSG_COMMAND_COMPLETE ;
 int MSG_EXTENDED ;
 int MSG_EXT_SDTR ;
 int NSP_DEBUG_INTR ;
 scalar_t__ NSP_SELTIMEOUT ;
 unsigned char PHASE_CHANGE_IRQ ;
 int PH_COMMAND ;
 void* PH_DATA ;
 int PH_MSG_IN ;
 int PH_MSG_OUT ;

 int PH_SELECTED ;

 int PH_STATUS ;
 unsigned char RESELECT_IRQ ;
 int SCSIBUSCTRL ;
 int SCSIBUSMON ;
 int SCSIDATAWITHACK ;
 int SCSI_ATN ;
 unsigned char SCSI_RESET_IRQ ;
 unsigned int SYNC_NG ;
 unsigned int SYNC_NOT_YET ;
 unsigned int SYNC_OK ;
 int TIMERCOUNT ;
 int TRUE ;
 int nsp_analyze_sdtr (struct scsi_cmnd*) ;
 int nsp_bus_reset (TYPE_6__*) ;
 int nsp_dataphase_bypass (struct scsi_cmnd*) ;
 int nsp_dbg (int ,char*,...) ;
 void* nsp_index_read (unsigned int,int ) ;
 int nsp_index_write (unsigned int,int ,int) ;
 int nsp_message_in (struct scsi_cmnd*) ;
 int nsp_message_out (struct scsi_cmnd*) ;
 int nsp_msg (int ,char*,...) ;
 int nsp_nexus (struct scsi_cmnd*) ;
 int nsp_pio_read (struct scsi_cmnd*) ;
 int nsp_pio_write (struct scsi_cmnd*) ;
 unsigned char nsp_read (unsigned int,int ) ;
 scalar_t__ nsp_reselected (struct scsi_cmnd*) ;
 int nsp_scsi_done (struct scsi_cmnd*) ;
 int nsp_start_timer (struct scsi_cmnd*,int) ;
 int nsp_write (unsigned int,int ,int) ;
 int nsphw_init (TYPE_6__*) ;
 int show_message (TYPE_6__*) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t nspintr(int irq, void *dev_id)
{
 unsigned int base;
 unsigned char irq_status, irq_phase, phase;
 struct scsi_cmnd *tmpSC;
 unsigned char target, lun;
 unsigned int *sync_neg;
 int i, tmp;
 nsp_hw_data *data;





 if ( dev_id != ((void*)0) &&
     ((scsi_info_t *)dev_id)->host != ((void*)0) ) {
  scsi_info_t *info = (scsi_info_t *)dev_id;

  data = (nsp_hw_data *)info->host->hostdata;
 } else {
  nsp_dbg(NSP_DEBUG_INTR, "host data wrong");
  return IRQ_NONE;
 }



 base = data->BaseAddress;





 nsp_write(base, IRQCONTROL, IRQCONTROL_IRQDISABLE);
 irq_status = nsp_read(base, IRQSTATUS);

 if ((irq_status == 0xff) || ((irq_status & IRQSTATUS_MASK) == 0)) {
  nsp_write(base, IRQCONTROL, 0);

  return IRQ_NONE;
 }





 phase = nsp_index_read(base, SCSIBUSMON);
 if((irq_status & IRQSTATUS_SCSI) != 0) {
  irq_phase = nsp_index_read(base, IRQPHASESENCE);
 } else {
  irq_phase = 0;
 }







 if (data->TimerCount != 0) {

  nsp_index_write(base, TIMERCOUNT, 0);
  nsp_index_write(base, TIMERCOUNT, 0);
  data->TimerCount = 0;
 }

 if ((irq_status & IRQSTATUS_MASK) == IRQSTATUS_TIMER &&
     data->SelectionTimeOut == 0) {

  nsp_write(base, IRQCONTROL, IRQCONTROL_TIMER_CLEAR);
  return IRQ_HANDLED;
 }

 nsp_write(base, IRQCONTROL, IRQCONTROL_TIMER_CLEAR | IRQCONTROL_FIFO_CLEAR);

 if ((irq_status & IRQSTATUS_SCSI) &&
     (irq_phase & SCSI_RESET_IRQ)) {
  nsp_msg(KERN_ERR, "bus reset (power off?)");

  nsphw_init(data);
  nsp_bus_reset(data);

  if(data->CurrentSC != ((void*)0)) {
   tmpSC = data->CurrentSC;
   tmpSC->result = (DID_RESET << 16) |
             ((tmpSC->SCp.Message & 0xff) << 8) |
             ((tmpSC->SCp.Status & 0xff) << 0);
   nsp_scsi_done(tmpSC);
  }
  return IRQ_HANDLED;
 }

 if (data->CurrentSC == ((void*)0)) {
  nsp_msg(KERN_ERR, "CurrentSC==NULL irq_status=0x%x phase=0x%x irq_phase=0x%x this can't be happen. reset everything", irq_status, phase, irq_phase);
  nsphw_init(data);
  nsp_bus_reset(data);
  return IRQ_HANDLED;
 }

 tmpSC = data->CurrentSC;
 target = tmpSC->device->id;
 lun = tmpSC->device->lun;
 sync_neg = &(data->Sync[target].SyncNegotiation);




 if (irq_status & IRQSTATUS_SCSI) {
  if (irq_phase & RESELECT_IRQ) {
   nsp_dbg(NSP_DEBUG_INTR, "reselect");
   nsp_write(base, IRQCONTROL, IRQCONTROL_RESELECT_CLEAR);
   if (nsp_reselected(tmpSC) != FALSE) {
    return IRQ_HANDLED;
   }
  }

  if ((irq_phase & (PHASE_CHANGE_IRQ | LATCHED_BUS_FREE)) == 0) {
   return IRQ_HANDLED;
  }
 }



 switch(tmpSC->SCp.phase) {
 case 128:

  if ((phase & BUSMON_BSY) == 0) {

   if (data->SelectionTimeOut >= NSP_SELTIMEOUT) {
    nsp_dbg(NSP_DEBUG_INTR, "selection time out");
    data->SelectionTimeOut = 0;
    nsp_index_write(base, SCSIBUSCTRL, 0);

    tmpSC->result = DID_TIME_OUT << 16;
    nsp_scsi_done(tmpSC);

    return IRQ_HANDLED;
   }
   data->SelectionTimeOut += 1;
   nsp_start_timer(tmpSC, 1000/51);
   return IRQ_HANDLED;
  }



  data->SelectionTimeOut = 0;
  tmpSC->SCp.phase = PH_SELECTED;
  nsp_index_write(base, SCSIBUSCTRL, SCSI_ATN);
  udelay(1);
  nsp_index_write(base, SCSIBUSCTRL, SCSI_ATN | AUTODIRECTION | ACKENB);
  return IRQ_HANDLED;

  break;

 case 129:


  if ((phase & BUSMON_PHASE_MASK) != 133) {

   tmpSC->result = DID_ABORT << 16;
   nsp_scsi_done(tmpSC);
   return IRQ_HANDLED;
  }

 default:
  if ((irq_status & (IRQSTATUS_SCSI | IRQSTATUS_FIFO)) == 0) {
   return IRQ_HANDLED;
  }
  break;
 }







 if (((tmpSC->SCp.phase == PH_MSG_IN) || (tmpSC->SCp.phase == PH_MSG_OUT)) &&
     (irq_phase & LATCHED_BUS_FREE) != 0 ) {
  nsp_dbg(NSP_DEBUG_INTR, "normal disconnect irq_status=0x%x, phase=0x%x, irq_phase=0x%x", irq_status, phase, irq_phase);




  if (tmpSC->SCp.Message == MSG_COMMAND_COMPLETE) {
   tmpSC->result = (DID_OK << 16) |
     ((tmpSC->SCp.Message & 0xff) << 8) |
     ((tmpSC->SCp.Status & 0xff) << 0);
   nsp_dbg(NSP_DEBUG_INTR, "command complete result=0x%x", tmpSC->result);
   nsp_scsi_done(tmpSC);

   return IRQ_HANDLED;
  }

  return IRQ_HANDLED;
 }



 if (phase == 0) {
  nsp_msg(KERN_DEBUG, "unexpected bus free. irq_status=0x%x, phase=0x%x, irq_phase=0x%x", irq_status, phase, irq_phase);

  *sync_neg = SYNC_NG;
  tmpSC->result = DID_ERROR << 16;
  nsp_scsi_done(tmpSC);
  return IRQ_HANDLED;
 }

 switch (phase & BUSMON_PHASE_MASK) {
 case 136:
  nsp_dbg(NSP_DEBUG_INTR, "BUSPHASE_COMMAND");
  if ((phase & BUSMON_REQ) == 0) {
   nsp_dbg(NSP_DEBUG_INTR, "REQ == 0");
   return IRQ_HANDLED;
  }

  tmpSC->SCp.phase = PH_COMMAND;

  nsp_nexus(tmpSC);


  nsp_dbg(NSP_DEBUG_INTR, "cmd_len=%d", tmpSC->cmd_len);
  nsp_index_write(base, COMMANDCTRL, CLEAR_COMMAND_POINTER);
  for (i = 0; i < tmpSC->cmd_len; i++) {
   nsp_index_write(base, COMMANDDATA, tmpSC->cmnd[i]);
  }
  nsp_index_write(base, COMMANDCTRL, CLEAR_COMMAND_POINTER | AUTO_COMMAND_GO);
  break;

 case 134:
  nsp_dbg(NSP_DEBUG_INTR, "BUSPHASE_DATA_OUT");

  tmpSC->SCp.phase = PH_DATA;
  tmpSC->SCp.have_data_in = IO_OUT;

  nsp_pio_write(tmpSC);

  break;

 case 135:
  nsp_dbg(NSP_DEBUG_INTR, "BUSPHASE_DATA_IN");

  tmpSC->SCp.phase = PH_DATA;
  tmpSC->SCp.have_data_in = IO_IN;

  nsp_pio_read(tmpSC);

  break;

 case 130:
  nsp_dataphase_bypass(tmpSC);
  nsp_dbg(NSP_DEBUG_INTR, "BUSPHASE_STATUS");

  tmpSC->SCp.phase = PH_STATUS;

  tmpSC->SCp.Status = nsp_index_read(base, SCSIDATAWITHACK);
  nsp_dbg(NSP_DEBUG_INTR, "message=0x%x status=0x%x", tmpSC->SCp.Message, tmpSC->SCp.Status);

  break;

 case 132:
  nsp_dbg(NSP_DEBUG_INTR, "BUSPHASE_MESSAGE_OUT");
  if ((phase & BUSMON_REQ) == 0) {
   goto timer_out;
  }

  tmpSC->SCp.phase = PH_MSG_OUT;



  data->MsgLen = i = 0;
  data->MsgBuffer[i] = IDENTIFY(TRUE, lun); i++;

  if (*sync_neg == SYNC_NOT_YET) {
   data->Sync[target].SyncPeriod = 0;
   data->Sync[target].SyncOffset = 0;


   data->MsgBuffer[i] = MSG_EXTENDED; i++;
   data->MsgBuffer[i] = 3; i++;
   data->MsgBuffer[i] = MSG_EXT_SDTR; i++;
   data->MsgBuffer[i] = 0x0c; i++;
   data->MsgBuffer[i] = 15; i++;

  }
  data->MsgLen = i;

  nsp_analyze_sdtr(tmpSC);
  show_message(data);
  nsp_message_out(tmpSC);
  break;

 case 133:
  nsp_dataphase_bypass(tmpSC);
  nsp_dbg(NSP_DEBUG_INTR, "BUSPHASE_MESSAGE_IN");
  if ((phase & BUSMON_REQ) == 0) {
   goto timer_out;
  }

  tmpSC->SCp.phase = PH_MSG_IN;
  nsp_message_in(tmpSC);


  if (*sync_neg == SYNC_NOT_YET) {


   if (data->MsgLen >= 5 &&
       data->MsgBuffer[0] == MSG_EXTENDED &&
       data->MsgBuffer[1] == 3 &&
       data->MsgBuffer[2] == MSG_EXT_SDTR ) {
    data->Sync[target].SyncPeriod = data->MsgBuffer[3];
    data->Sync[target].SyncOffset = data->MsgBuffer[4];

    *sync_neg = SYNC_OK;
   } else {
    data->Sync[target].SyncPeriod = 0;
    data->Sync[target].SyncOffset = 0;
    *sync_neg = SYNC_NG;
   }
   nsp_analyze_sdtr(tmpSC);
  }



  tmp = -1;
  for (i = 0; i < data->MsgLen; i++) {
   tmp = data->MsgBuffer[i];
   if (data->MsgBuffer[i] == MSG_EXTENDED) {
    i += (1 + data->MsgBuffer[i+1]);
   }
  }
  tmpSC->SCp.Message = tmp;

  nsp_dbg(NSP_DEBUG_INTR, "message=0x%x len=%d", tmpSC->SCp.Message, data->MsgLen);
  show_message(data);

  break;

 case 131:
 default:
  nsp_dbg(NSP_DEBUG_INTR, "BUSPHASE other");

  break;
 }


 return IRQ_HANDLED;

timer_out:
 nsp_start_timer(tmpSC, 1000/102);
 return IRQ_HANDLED;
}
