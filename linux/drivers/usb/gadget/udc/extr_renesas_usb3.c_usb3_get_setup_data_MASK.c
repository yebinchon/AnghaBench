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
typedef  void* u32 ;
struct usb_ctrlrequest {int bRequestType; } ;
struct renesas_usb3_ep {int dir_in; } ;
struct renesas_usb3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB3_STUP_DAT_0 ; 
 int /*<<< orphan*/  USB3_STUP_DAT_1 ; 
 int USB_DIR_IN ; 
 struct renesas_usb3_ep* FUNC0 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct renesas_usb3 *usb3,
				struct usb_ctrlrequest *ctrl)
{
	struct renesas_usb3_ep *usb3_ep = FUNC0(usb3, 0);
	u32 *data = (u32 *)ctrl;

	*data++ = FUNC1(usb3, USB3_STUP_DAT_0);
	*data = FUNC1(usb3, USB3_STUP_DAT_1);

	/* update this driver's flag */
	usb3_ep->dir_in = !!(ctrl->bRequestType & USB_DIR_IN);
}