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
struct usb_hub {int /*<<< orphan*/  hdev; } ;

/* Variables and functions */
 unsigned int USB_PORT_STAT_POWER ; 
 unsigned int USB_SS_PORT_STAT_POWER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct usb_hub *hub, unsigned portstatus)
{
	int ret = 0;

	if (FUNC0(hub->hdev)) {
		if (portstatus & USB_SS_PORT_STAT_POWER)
			ret = 1;
	} else {
		if (portstatus & USB_PORT_STAT_POWER)
			ret = 1;
	}

	return ret;
}