
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int controller; } ;
struct usb_hcd {int uses_new_polling; int regs; TYPE_1__ self; int state; } ;
struct TYPE_6__ {scalar_t__ expires; } ;


 int ATL_BUF_FILL ;
 int CMD_LRESET ;
 int CMD_RESET ;
 int CMD_RUN ;
 int FLAG_CF ;
 int HC_ATL_IRQ_MASK_AND_REG ;
 int HC_ATL_IRQ_MASK_OR_REG ;
 int HC_ATL_PTD_LASTPTD_REG ;
 int HC_ATL_PTD_SKIPMAP_REG ;
 int HC_BUFFER_STATUS_REG ;
 int HC_CHIP_ID_REG ;
 int HC_CONFIGFLAG ;
 int HC_HW_MODE_CTRL ;
 int HC_INT_IRQ_MASK_AND_REG ;
 int HC_INT_IRQ_MASK_OR_REG ;
 int HC_INT_PTD_LASTPTD_REG ;
 int HC_INT_PTD_SKIPMAP_REG ;
 int HC_ISO_IRQ_MASK_AND_REG ;
 int HC_ISO_IRQ_MASK_OR_REG ;
 int HC_ISO_PTD_LASTPTD_REG ;
 int HC_ISO_PTD_SKIPMAP_REG ;
 int HC_STATE_RUNNING ;
 int HC_USBCMD ;
 int HW_GLOBAL_INTR_EN ;
 int INT_BUF_FILL ;
 int SLOT_CHECK_PERIOD ;
 int add_timer (TYPE_2__*) ;
 int dev_info (int ,char*,int,int) ;
 int down_write (int *) ;
 int ehci_cf_port_reset_rwsem ;
 int errata2_function ;
 TYPE_2__ errata2_timer ;
 struct usb_hcd* errata2_timer_hcd ;
 int handshake (struct usb_hcd*,int ,int,int,int) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int reg_read32 (int ,int ) ;
 int reg_write32 (int ,int ,int) ;
 int timer_setup (TYPE_2__*,int ,int ) ;
 int up_write (int *) ;

__attribute__((used)) static int isp1760_run(struct usb_hcd *hcd)
{
 int retval;
 u32 temp;
 u32 command;
 u32 chipid;

 hcd->uses_new_polling = 1;

 hcd->state = HC_STATE_RUNNING;


 reg_write32(hcd->regs, HC_ATL_IRQ_MASK_AND_REG, 0);
 reg_write32(hcd->regs, HC_ATL_IRQ_MASK_OR_REG, 0xffffffff);
 reg_write32(hcd->regs, HC_INT_IRQ_MASK_AND_REG, 0);
 reg_write32(hcd->regs, HC_INT_IRQ_MASK_OR_REG, 0xffffffff);
 reg_write32(hcd->regs, HC_ISO_IRQ_MASK_AND_REG, 0);
 reg_write32(hcd->regs, HC_ISO_IRQ_MASK_OR_REG, 0xffffffff);


 temp = reg_read32(hcd->regs, HC_HW_MODE_CTRL);
 reg_write32(hcd->regs, HC_HW_MODE_CTRL, temp | HW_GLOBAL_INTR_EN);

 command = reg_read32(hcd->regs, HC_USBCMD);
 command &= ~(CMD_LRESET|CMD_RESET);
 command |= CMD_RUN;
 reg_write32(hcd->regs, HC_USBCMD, command);

 retval = handshake(hcd, HC_USBCMD, CMD_RUN, CMD_RUN, 250 * 1000);
 if (retval)
  return retval;






 down_write(&ehci_cf_port_reset_rwsem);
 reg_write32(hcd->regs, HC_CONFIGFLAG, FLAG_CF);

 retval = handshake(hcd, HC_CONFIGFLAG, FLAG_CF, FLAG_CF, 250 * 1000);
 up_write(&ehci_cf_port_reset_rwsem);
 if (retval)
  return retval;

 errata2_timer_hcd = hcd;
 timer_setup(&errata2_timer, errata2_function, 0);
 errata2_timer.expires = jiffies + msecs_to_jiffies(SLOT_CHECK_PERIOD);
 add_timer(&errata2_timer);

 chipid = reg_read32(hcd->regs, HC_CHIP_ID_REG);
 dev_info(hcd->self.controller, "USB ISP %04x HW rev. %d started\n",
     chipid & 0xffff, chipid >> 16);




 reg_write32(hcd->regs, HC_ATL_PTD_LASTPTD_REG, 0x80000000);
 reg_write32(hcd->regs, HC_INT_PTD_LASTPTD_REG, 0x80000000);
 reg_write32(hcd->regs, HC_ISO_PTD_LASTPTD_REG, 0x00000001);
 reg_write32(hcd->regs, HC_ATL_PTD_SKIPMAP_REG, 0xffffffff);
 reg_write32(hcd->regs, HC_INT_PTD_SKIPMAP_REG, 0xffffffff);
 reg_write32(hcd->regs, HC_ISO_PTD_SKIPMAP_REG, 0xffffffff);
 reg_write32(hcd->regs, HC_BUFFER_STATUS_REG,
      ATL_BUF_FILL | INT_BUF_FILL);





 return 0;
}
