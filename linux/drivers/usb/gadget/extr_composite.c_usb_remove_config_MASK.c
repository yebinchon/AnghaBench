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
struct usb_configuration {int dummy; } ;
struct usb_composite_dev {int /*<<< orphan*/  lock; struct usb_configuration* config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,struct usb_configuration*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_composite_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct usb_composite_dev *cdev,
		      struct usb_configuration *config)
{
	unsigned long flags;

	FUNC2(&cdev->lock, flags);

	if (cdev->config == config)
		FUNC1(cdev);

	FUNC3(&cdev->lock, flags);

	FUNC0(cdev, config);
}