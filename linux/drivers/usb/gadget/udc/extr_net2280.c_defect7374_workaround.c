
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_ctrlrequest {int bRequestType; } ;
struct net2280 {int bug7734_patched; int regs; TYPE_2__* plregs; TYPE_1__* usb; } ;
struct TYPE_4__ {int pl_ep_status_1; } ;
struct TYPE_3__ {int usbstat; } ;


 int ACK_GOOD_MORE_ACKS_TO_COME ;
 int ACK_GOOD_NORMAL ;
 int BIT (int ) ;
 int DEFECT7374_FSM_FIELD ;
 int DEFECT7374_FSM_NON_SS_CONTROL_READ ;
 int DEFECT7374_FSM_SS_CONTROL_READ ;
 int DEFECT7374_FSM_WAITING_FOR_CONTROL_READ ;
 int DEFECT_7374_NUMBEROF_MAX_WAIT_LOOPS ;
 int DEFECT_7374_PROCESSOR_WAIT_TIME ;
 int SCRATCH ;
 int STATE ;
 int SUPER_SPEED_MODE ;
 int USB_DIR_IN ;
 int defect7374_disable_data_eps (struct net2280*) ;
 int ep_err (struct net2280*,char*,...) ;
 int ep_warn (struct net2280*,char*,int) ;
 int get_idx_reg (int ,int ) ;
 int readl (int *) ;
 int set_idx_reg (int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void defect7374_workaround(struct net2280 *dev, struct usb_ctrlrequest r)
{
 u32 scratch, fsmvalue;
 u32 ack_wait_timeout, state;


 scratch = get_idx_reg(dev->regs, SCRATCH);
 fsmvalue = scratch & (0xf << DEFECT7374_FSM_FIELD);
 scratch &= ~(0xf << DEFECT7374_FSM_FIELD);

 if (!((fsmvalue == DEFECT7374_FSM_WAITING_FOR_CONTROL_READ) &&
    (r.bRequestType & USB_DIR_IN)))
  return;


 if (!(readl(&dev->usb->usbstat) & BIT(SUPER_SPEED_MODE))) {






  scratch |= DEFECT7374_FSM_NON_SS_CONTROL_READ;
  dev->bug7734_patched = 1;
  goto restore_data_eps;
 }


 for (ack_wait_timeout = 0;
   ack_wait_timeout < DEFECT_7374_NUMBEROF_MAX_WAIT_LOOPS;
   ack_wait_timeout++) {

  state = readl(&dev->plregs->pl_ep_status_1)
   & (0xff << STATE);
  if ((state >= (ACK_GOOD_NORMAL << STATE)) &&
   (state <= (ACK_GOOD_MORE_ACKS_TO_COME << STATE))) {
   scratch |= DEFECT7374_FSM_SS_CONTROL_READ;
   dev->bug7734_patched = 1;
   break;
  }





  udelay(DEFECT_7374_PROCESSOR_WAIT_TIME);

  continue;
 }


 if (ack_wait_timeout >= DEFECT_7374_NUMBEROF_MAX_WAIT_LOOPS) {
  ep_err(dev, "FAIL: Defect 7374 workaround waited but failed "
  "to detect SS host's data phase ACK.");
  ep_err(dev, "PL_EP_STATUS_1(23:16):.Expected from 0x11 to 0x16"
  "got 0x%2.2x.\n", state >> STATE);
 } else {
  ep_warn(dev, "INFO: Defect 7374 workaround waited about\n"
  "%duSec for Control Read Data Phase ACK\n",
   DEFECT_7374_PROCESSOR_WAIT_TIME * ack_wait_timeout);
 }

restore_data_eps:




 defect7374_disable_data_eps(dev);

 set_idx_reg(dev->regs, SCRATCH, scratch);

 return;
}
