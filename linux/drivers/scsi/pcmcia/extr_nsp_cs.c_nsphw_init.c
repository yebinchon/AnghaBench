
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int BaseAddress; int ScsiClockDiv; int TransferMode; scalar_t__ FifoCount; int * CurrentSC; } ;
typedef TYPE_1__ nsp_hw_data ;


 int ACKWIDTH ;
 int ACK_COUNTER_CLEAR ;
 int CLOCKDIV ;
 int CLOCK_40M ;
 int FALSE ;
 int FAST_20 ;
 int HOST_COUNTER_CLEAR ;
 int IFSELECT ;
 int IF_IFSEL ;
 int IF_REGSEL ;
 int IRQCONTROL ;
 int IRQCONTROL_ALLCLEAR ;
 int IRQCONTROL_ALLMASK ;
 int KERN_INFO ;
 int MODE_IO8 ;
 int NSP_DEBUG_INIT ;
 int OTHERCONTROL ;
 int PARITYCTRL ;
 int POINTERCLR ;
 int POINTER_CLEAR ;
 int POWER_ON ;
 int REQ_COUNTER_CLEAR ;
 int RESELECT_EI ;
 int SCSIIRQMODE ;
 int SCSI_PHASE_CHANGE_EI ;
 int SCSI_RESET_IRQ_EI ;
 int SYNCREG ;
 int TERMPWRCTRL ;
 int TIMERCOUNT ;
 int TPWR_SENSE ;
 int TRANSFERMODE ;
 int TRUE ;
 int nsp_dbg (int ,char*,unsigned int) ;
 int nsp_index_read (unsigned int,int ) ;
 int nsp_index_write (unsigned int,int ,int) ;
 int nsp_msg (int ,char*) ;
 int nsp_setup_fifo (TYPE_1__*,int ) ;
 int nsp_write (unsigned int,int ,int ) ;
 int nsphw_init_sync (TYPE_1__*) ;

__attribute__((used)) static int nsphw_init(nsp_hw_data *data)
{
 unsigned int base = data->BaseAddress;

 nsp_dbg(NSP_DEBUG_INIT, "in base=0x%x", base);

 data->ScsiClockDiv = CLOCK_40M | FAST_20;
 data->CurrentSC = ((void*)0);
 data->FifoCount = 0;
 data->TransferMode = MODE_IO8;

 nsphw_init_sync(data);


 nsp_write(base, IRQCONTROL, IRQCONTROL_ALLMASK);


 nsp_write(base, IFSELECT, IF_IFSEL);

 nsp_index_write(base, SCSIIRQMODE, 0);

 nsp_index_write(base, TRANSFERMODE, MODE_IO8);
 nsp_index_write(base, CLOCKDIV, data->ScsiClockDiv);

 nsp_index_write(base, PARITYCTRL, 0);
 nsp_index_write(base, POINTERCLR, POINTER_CLEAR |
         ACK_COUNTER_CLEAR |
         REQ_COUNTER_CLEAR |
         HOST_COUNTER_CLEAR);


 nsp_write(base, IFSELECT, IF_REGSEL);
 nsp_index_write(base, TERMPWRCTRL, 0);
 if ((nsp_index_read(base, OTHERCONTROL) & TPWR_SENSE) == 0) {
  nsp_msg(KERN_INFO, "terminator power on");
  nsp_index_write(base, TERMPWRCTRL, POWER_ON);
 }

 nsp_index_write(base, TIMERCOUNT, 0);
 nsp_index_write(base, TIMERCOUNT, 0);

 nsp_index_write(base, SYNCREG, 0);
 nsp_index_write(base, ACKWIDTH, 0);


 nsp_index_write(base, SCSIIRQMODE, SCSI_PHASE_CHANGE_EI |
         RESELECT_EI |
         SCSI_RESET_IRQ_EI );
 nsp_write(base, IRQCONTROL, IRQCONTROL_ALLCLEAR);

 nsp_setup_fifo(data, FALSE);

 return TRUE;
}
