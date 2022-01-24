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
struct usb_gadget {int dummy; } ;
struct usb_composite_dev {int /*<<< orphan*/  lock; TYPE_1__* driver; scalar_t__ config; scalar_t__ suspended; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disconnect ) (struct usb_composite_dev*) ;} ;

/* Variables and functions */
 struct usb_composite_dev* FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_composite_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_composite_dev*) ; 

void FUNC5(struct usb_gadget *gadget)
{
	struct usb_composite_dev	*cdev = FUNC0(gadget);
	unsigned long			flags;

	/* REVISIT:  should we have config and device level
	 * disconnect callbacks?
	 */
	FUNC2(&cdev->lock, flags);
	cdev->suspended = 0;
	if (cdev->config)
		FUNC1(cdev);
	if (cdev->driver->disconnect)
		cdev->driver->disconnect(cdev);
	FUNC3(&cdev->lock, flags);
}