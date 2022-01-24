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
struct usb_ctrlrequest {int dummy; } ;
struct bcm63xx_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* setup ) (int /*<<< orphan*/ *,struct usb_ctrlrequest*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct usb_ctrlrequest*) ; 

__attribute__((used)) static int FUNC3(struct bcm63xx_udc *udc,
	struct usb_ctrlrequest *ctrl)
{
	int rc;

	FUNC1(&udc->lock);
	rc = udc->driver->setup(&udc->gadget, ctrl);
	FUNC0(&udc->lock);
	return rc;
}