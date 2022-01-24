#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int uses_new_polling; int /*<<< orphan*/  regs; TYPE_1__ self; int /*<<< orphan*/  state; } ;
struct TYPE_6__ {scalar_t__ expires; } ;

/* Variables and functions */
 int ATL_BUF_FILL ; 
 int CMD_LRESET ; 
 int CMD_RESET ; 
 int CMD_RUN ; 
 int FLAG_CF ; 
 int /*<<< orphan*/  HC_ATL_IRQ_MASK_AND_REG ; 
 int /*<<< orphan*/  HC_ATL_IRQ_MASK_OR_REG ; 
 int /*<<< orphan*/  HC_ATL_PTD_LASTPTD_REG ; 
 int /*<<< orphan*/  HC_ATL_PTD_SKIPMAP_REG ; 
 int /*<<< orphan*/  HC_BUFFER_STATUS_REG ; 
 int /*<<< orphan*/  HC_CHIP_ID_REG ; 
 int /*<<< orphan*/  HC_CONFIGFLAG ; 
 int /*<<< orphan*/  HC_HW_MODE_CTRL ; 
 int /*<<< orphan*/  HC_INT_IRQ_MASK_AND_REG ; 
 int /*<<< orphan*/  HC_INT_IRQ_MASK_OR_REG ; 
 int /*<<< orphan*/  HC_INT_PTD_LASTPTD_REG ; 
 int /*<<< orphan*/  HC_INT_PTD_SKIPMAP_REG ; 
 int /*<<< orphan*/  HC_ISO_IRQ_MASK_AND_REG ; 
 int /*<<< orphan*/  HC_ISO_IRQ_MASK_OR_REG ; 
 int /*<<< orphan*/  HC_ISO_PTD_LASTPTD_REG ; 
 int /*<<< orphan*/  HC_ISO_PTD_SKIPMAP_REG ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int /*<<< orphan*/  HC_USBCMD ; 
 int HW_GLOBAL_INTR_EN ; 
 int INT_BUF_FILL ; 
 int /*<<< orphan*/  SLOT_CHECK_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ehci_cf_port_reset_rwsem ; 
 int /*<<< orphan*/  errata2_function ; 
 TYPE_2__ errata2_timer ; 
 struct usb_hcd* errata2_timer_hcd ; 
 int FUNC3 (struct usb_hcd*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct usb_hcd *hcd)
{
	int retval;
	u32 temp;
	u32 command;
	u32 chipid;

	hcd->uses_new_polling = 1;

	hcd->state = HC_STATE_RUNNING;

	/* Set PTD interrupt AND & OR maps */
	FUNC6(hcd->regs, HC_ATL_IRQ_MASK_AND_REG, 0);
	FUNC6(hcd->regs, HC_ATL_IRQ_MASK_OR_REG, 0xffffffff);
	FUNC6(hcd->regs, HC_INT_IRQ_MASK_AND_REG, 0);
	FUNC6(hcd->regs, HC_INT_IRQ_MASK_OR_REG, 0xffffffff);
	FUNC6(hcd->regs, HC_ISO_IRQ_MASK_AND_REG, 0);
	FUNC6(hcd->regs, HC_ISO_IRQ_MASK_OR_REG, 0xffffffff);
	/* step 23 passed */

	temp = FUNC5(hcd->regs, HC_HW_MODE_CTRL);
	FUNC6(hcd->regs, HC_HW_MODE_CTRL, temp | HW_GLOBAL_INTR_EN);

	command = FUNC5(hcd->regs, HC_USBCMD);
	command &= ~(CMD_LRESET|CMD_RESET);
	command |= CMD_RUN;
	FUNC6(hcd->regs, HC_USBCMD, command);

	retval = FUNC3(hcd, HC_USBCMD, CMD_RUN, CMD_RUN, 250 * 1000);
	if (retval)
		return retval;

	/*
	 * XXX
	 * Spec says to write FLAG_CF as last config action, priv code grabs
	 * the semaphore while doing so.
	 */
	FUNC2(&ehci_cf_port_reset_rwsem);
	FUNC6(hcd->regs, HC_CONFIGFLAG, FLAG_CF);

	retval = FUNC3(hcd, HC_CONFIGFLAG, FLAG_CF, FLAG_CF, 250 * 1000);
	FUNC8(&ehci_cf_port_reset_rwsem);
	if (retval)
		return retval;

	errata2_timer_hcd = hcd;
	FUNC7(&errata2_timer, errata2_function, 0);
	errata2_timer.expires = jiffies + FUNC4(SLOT_CHECK_PERIOD);
	FUNC0(&errata2_timer);

	chipid = FUNC5(hcd->regs, HC_CHIP_ID_REG);
	FUNC1(hcd->self.controller, "USB ISP %04x HW rev. %d started\n",
					chipid & 0xffff, chipid >> 16);

	/* PTD Register Init Part 2, Step 28 */

	/* Setup registers controlling PTD checking */
	FUNC6(hcd->regs, HC_ATL_PTD_LASTPTD_REG, 0x80000000);
	FUNC6(hcd->regs, HC_INT_PTD_LASTPTD_REG, 0x80000000);
	FUNC6(hcd->regs, HC_ISO_PTD_LASTPTD_REG, 0x00000001);
	FUNC6(hcd->regs, HC_ATL_PTD_SKIPMAP_REG, 0xffffffff);
	FUNC6(hcd->regs, HC_INT_PTD_SKIPMAP_REG, 0xffffffff);
	FUNC6(hcd->regs, HC_ISO_PTD_SKIPMAP_REG, 0xffffffff);
	FUNC6(hcd->regs, HC_BUFFER_STATUS_REG,
						ATL_BUF_FILL | INT_BUF_FILL);

	/* GRR this is run-once init(), being done every time the HC starts.
	 * So long as they're part of class devices, we can't do it init()
	 * since the class device isn't created that early.
	 */
	return 0;
}