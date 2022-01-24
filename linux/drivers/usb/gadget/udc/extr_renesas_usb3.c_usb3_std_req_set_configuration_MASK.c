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
struct usb_ctrlrequest {int /*<<< orphan*/  wValue; } ;
struct renesas_usb3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB3_USB_COM_CON ; 
 int /*<<< orphan*/  USB_COM_CON_CONF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct renesas_usb3 *usb3,
					   struct usb_ctrlrequest *ctrl)
{
	if (FUNC0(ctrl->wValue) > 0)
		FUNC2(usb3, USB_COM_CON_CONF, USB3_USB_COM_CON);
	else
		FUNC1(usb3, USB_COM_CON_CONF, USB3_USB_COM_CON);

	return false;
}