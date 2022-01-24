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
struct usb_interface {int dummy; } ;
struct adu_device {int disconnected; int /*<<< orphan*/  open_count; int /*<<< orphan*/  mtx; int /*<<< orphan*/  interrupt_out_urb; int /*<<< orphan*/  interrupt_in_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  adu_class ; 
 int /*<<< orphan*/  FUNC0 (struct adu_device*) ; 
 int /*<<< orphan*/  adutux_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct adu_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *interface)
{
	struct adu_device *dev;

	dev = FUNC4(interface);

	FUNC3(interface, &adu_class);

	FUNC5(dev->interrupt_in_urb);
	FUNC5(dev->interrupt_out_urb);

	FUNC1(&adutux_mutex);
	FUNC6(interface, NULL);

	FUNC1(&dev->mtx);	/* not interruptible */
	dev->disconnected = 1;
	FUNC2(&dev->mtx);

	/* if the device is not opened, then we clean up right now */
	if (!dev->open_count)
		FUNC0(dev);

	FUNC2(&adutux_mutex);
}