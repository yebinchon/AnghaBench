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
struct sa1111_dev {scalar_t__ mapbase; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ USB_RESET ; 
 unsigned int USB_RESET_FORCEHCRESET ; 
 unsigned int USB_RESET_FORCEIFRESET ; 
 unsigned int USB_RESET_PWRCTRLLOW ; 
 unsigned int USB_RESET_PWRSENSELOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (struct sa1111_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct sa1111_dev *dev)
{
	unsigned int usb_rst = 0;
	int ret;

	FUNC0(&dev->dev, "starting SA-1111 OHCI USB Controller\n");

	if (FUNC4() ||
	    FUNC1() ||
	    FUNC3() ||
	    FUNC2())
		usb_rst = USB_RESET_PWRSENSELOW | USB_RESET_PWRCTRLLOW;

	/*
	 * Configure the power sense and control lines.  Place the USB
	 * host controller in reset.
	 */
	FUNC7(usb_rst | USB_RESET_FORCEIFRESET | USB_RESET_FORCEHCRESET,
		      dev->mapbase + USB_RESET);

	/*
	 * Now, carefully enable the USB clock, and take
	 * the USB host controller out of reset.
	 */
	ret = FUNC5(dev);
	if (ret == 0) {
		FUNC6(11);
		FUNC7(usb_rst, dev->mapbase + USB_RESET);
	}

	return ret;
}