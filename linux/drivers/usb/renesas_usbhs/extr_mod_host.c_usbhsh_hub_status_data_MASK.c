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
struct usbhsh_hpriv {int dummy; } ;
struct usb_hcd {int dummy; } ;

/* Variables and functions */
 struct usbhsh_hpriv* FUNC0 (struct usb_hcd*) ; 
 int FUNC1 (struct usbhsh_hpriv*) ; 

__attribute__((used)) static int FUNC2(struct usb_hcd *hcd, char *buf)
{
	struct usbhsh_hpriv *hpriv = FUNC0(hcd);
	int roothub_id = 1; /* only 1 root hub */

	/*
	 * does port stat was changed ?
	 * check USB_PORT_STAT_C_xxx << 16
	 */
	if (FUNC1(hpriv) & 0xFFFF0000)
		*buf = (1 << roothub_id);
	else
		*buf = 0;

	return !!(*buf);
}