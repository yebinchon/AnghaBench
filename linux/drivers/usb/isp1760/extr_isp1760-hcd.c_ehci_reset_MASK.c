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
typedef  int /*<<< orphan*/  u32 ;
struct usb_hcd {int /*<<< orphan*/  state; int /*<<< orphan*/  regs; } ;
struct isp1760_hcd {int /*<<< orphan*/  next_statechange; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RESET ; 
 int /*<<< orphan*/  HC_STATE_HALT ; 
 int /*<<< orphan*/  HC_USBCMD ; 
 int FUNC0 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct isp1760_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_hcd *hcd)
{
	struct isp1760_hcd *priv = FUNC1(hcd);

	u32 command = FUNC2(hcd->regs, HC_USBCMD);

	command |= CMD_RESET;
	FUNC3(hcd->regs, HC_USBCMD, command);
	hcd->state = HC_STATE_HALT;
	priv->next_statechange = jiffies;

	return FUNC0(hcd, HC_USBCMD, CMD_RESET, 0, 250 * 1000);
}