#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct usb_hcd {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int CMD_RUN ; 
 int /*<<< orphan*/  HC_HW_MODE_CTRL ; 
 int /*<<< orphan*/  HC_USBCMD ; 
 int HW_GLOBAL_INTR_EN ; 
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct usb_hcd *hcd)
{
	u32 command, temp;

	FUNC0(hcd);
	temp = FUNC1(hcd->regs, HC_HW_MODE_CTRL);
	FUNC2(hcd->regs, HC_HW_MODE_CTRL, temp &= ~HW_GLOBAL_INTR_EN);

	command = FUNC1(hcd->regs, HC_USBCMD);
	command &= ~CMD_RUN;
	FUNC2(hcd->regs, HC_USBCMD, command);
}