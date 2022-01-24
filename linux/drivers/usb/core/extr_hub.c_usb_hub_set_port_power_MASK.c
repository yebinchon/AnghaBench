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
struct usb_hub {int /*<<< orphan*/  power_bits; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_PORT_FEAT_POWER ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct usb_device *hdev, struct usb_hub *hub,
			   int port1, bool set)
{
	int ret;

	if (set)
		ret = FUNC2(hdev, port1, USB_PORT_FEAT_POWER);
	else
		ret = FUNC3(hdev, port1, USB_PORT_FEAT_POWER);

	if (ret)
		return ret;

	if (set)
		FUNC1(port1, hub->power_bits);
	else
		FUNC0(port1, hub->power_bits);
	return 0;
}