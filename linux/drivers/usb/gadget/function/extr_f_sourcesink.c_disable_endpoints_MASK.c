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
struct usb_ep {int dummy; } ;
struct usb_composite_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,struct usb_ep*) ; 

void FUNC1(struct usb_composite_dev *cdev,
		struct usb_ep *in, struct usb_ep *out,
		struct usb_ep *iso_in, struct usb_ep *iso_out)
{
	FUNC0(cdev, in);
	FUNC0(cdev, out);
	if (iso_in)
		FUNC0(cdev, iso_in);
	if (iso_out)
		FUNC0(cdev, iso_out);
}