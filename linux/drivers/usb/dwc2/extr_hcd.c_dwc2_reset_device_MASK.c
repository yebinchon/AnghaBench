#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {int dummy; } ;
struct usb_device {scalar_t__ speed; } ;
struct TYPE_2__ {int /*<<< orphan*/  change_speed_quirk; } ;
struct dwc2_hsotg {int /*<<< orphan*/  dev; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPRT0_SPD_FULL_SPEED ; 
 int /*<<< orphan*/  HPRT0_SPD_HIGH_SPEED ; 
 scalar_t__ USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_HIGH ; 
 scalar_t__ USB_SPEED_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*,int /*<<< orphan*/ ) ; 
 struct dwc2_hsotg* FUNC2 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC3(struct usb_hcd *hcd, struct usb_device *udev)
{
	struct dwc2_hsotg *hsotg = FUNC2(hcd);

	if (!hsotg->params.change_speed_quirk)
		return 0;

	if (udev->speed == USB_SPEED_HIGH) {
		FUNC0(hsotg->dev, "Set speed to high-speed\n");
		FUNC1(hcd, HPRT0_SPD_HIGH_SPEED);
	} else if ((udev->speed == USB_SPEED_FULL ||
				udev->speed == USB_SPEED_LOW)) {
		/*
		 * Change speed setting to full-speed if there's
		 * a full-speed or low-speed device plugged in.
		 */
		FUNC0(hsotg->dev, "Set speed to full-speed\n");
		FUNC1(hcd, HPRT0_SPD_FULL_SPEED);
	}

	return 0;
}