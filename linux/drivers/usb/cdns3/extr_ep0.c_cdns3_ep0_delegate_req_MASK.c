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
struct cdns3_device {int setup_pending; int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; TYPE_1__* gadget_driver; } ;
struct TYPE_2__ {int (* setup ) (int /*<<< orphan*/ *,struct usb_ctrlrequest*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct usb_ctrlrequest*) ; 

__attribute__((used)) static int FUNC3(struct cdns3_device *priv_dev,
				  struct usb_ctrlrequest *ctrl_req)
{
	int ret;

	FUNC1(&priv_dev->lock);
	priv_dev->setup_pending = 1;
	ret = priv_dev->gadget_driver->setup(&priv_dev->gadget, ctrl_req);
	priv_dev->setup_pending = 0;
	FUNC0(&priv_dev->lock);
	return ret;
}