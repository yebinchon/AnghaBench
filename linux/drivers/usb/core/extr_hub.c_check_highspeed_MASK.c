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
struct usb_qualifier_descriptor {int dummy; } ;
struct usb_hub {int /*<<< orphan*/  leds; int /*<<< orphan*/ * indicator; scalar_t__ has_indicators; } ;
struct usb_device {int quirks; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INDICATOR_GREEN_BLINK ; 
 int /*<<< orphan*/  USB_DT_DEVICE_QUALIFIER ; 
 int USB_QUIRK_DEVICE_QUALIFIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_qualifier_descriptor*) ; 
 struct usb_qualifier_descriptor* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_qualifier_descriptor*,int) ; 

__attribute__((used)) static void
FUNC5(struct usb_hub *hub, struct usb_device *udev, int port1)
{
	struct usb_qualifier_descriptor	*qual;
	int				status;

	if (udev->quirks & USB_QUIRK_DEVICE_QUALIFIER)
		return;

	qual = FUNC2(sizeof *qual, GFP_KERNEL);
	if (qual == NULL)
		return;

	status = FUNC4(udev, USB_DT_DEVICE_QUALIFIER, 0,
			qual, sizeof *qual);
	if (status == sizeof *qual) {
		FUNC0(&udev->dev, "not running at top speed; "
			"connect to a high speed hub\n");
		/* hub LEDs are probably harder to miss than syslog */
		if (hub->has_indicators) {
			hub->indicator[port1-1] = INDICATOR_GREEN_BLINK;
			FUNC3(system_power_efficient_wq,
					&hub->leds, 0);
		}
	}
	FUNC1(qual);
}