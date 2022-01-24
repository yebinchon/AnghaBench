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
struct usb_request {int dummy; } ;
struct usb_ep {TYPE_1__* ops; scalar_t__ address; int /*<<< orphan*/  enabled; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int (* queue ) (struct usb_ep*,struct usb_request*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ESHUTDOWN ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct usb_ep*,struct usb_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ep*,struct usb_request*,int) ; 

int FUNC3(struct usb_ep *ep,
			       struct usb_request *req, gfp_t gfp_flags)
{
	int ret = 0;

	if (FUNC0(!ep->enabled && ep->address)) {
		ret = -ESHUTDOWN;
		goto out;
	}

	ret = ep->ops->queue(ep, req, gfp_flags);

out:
	FUNC2(ep, req, ret);

	return ret;
}