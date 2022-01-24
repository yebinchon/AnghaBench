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
struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {scalar_t__ deactivations; int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct usb_function *function)
{
	struct usb_composite_dev	*cdev = function->config->cdev;
	unsigned long			flags;
	int				status = 0;

	FUNC0(&cdev->lock, flags);

	if (cdev->deactivations == 0)
		status = FUNC2(cdev->gadget);
	if (status == 0)
		cdev->deactivations++;

	FUNC1(&cdev->lock, flags);
	return status;
}