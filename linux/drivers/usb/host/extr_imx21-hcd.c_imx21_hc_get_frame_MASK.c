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
struct usb_hcd {int dummy; } ;
struct imx21 {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ USBH_FRMNUB ; 
 struct imx21* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_hcd *hcd)
{
	struct imx21 *imx21 = FUNC0(hcd);

	return FUNC2(FUNC1(imx21->regs + USBH_FRMNUB));
}