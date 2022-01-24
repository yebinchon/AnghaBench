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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sa1111_dev*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct sa1111_dev *dev)
{
	unsigned int usb_rst;

	FUNC0(&dev->dev, "stopping SA-1111 OHCI USB Controller\n");

	/*
	 * Put the USB host controller into reset.
	 */
	usb_rst = FUNC1(dev->mapbase + USB_RESET);
	FUNC3(usb_rst | USB_RESET_FORCEIFRESET | USB_RESET_FORCEHCRESET,
		      dev->mapbase + USB_RESET);

	/*
	 * Stop the USB clock.
	 */
	FUNC2(dev);
}