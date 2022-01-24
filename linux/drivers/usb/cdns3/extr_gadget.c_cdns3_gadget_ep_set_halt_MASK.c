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
struct usb_ep {TYPE_1__* desc; } ;
struct cdns3_endpoint {int flags; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int EPERM ; 
 int EP_ENABLED ; 
 int EP_WEDGE ; 
 int FUNC0 (struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3_device*,int /*<<< orphan*/ ) ; 
 struct cdns3_endpoint* FUNC3 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct usb_ep *ep, int value)
{
	struct cdns3_endpoint *priv_ep = FUNC3(ep);
	struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
	unsigned long flags;
	int ret = 0;

	if (!(priv_ep->flags & EP_ENABLED))
		return -EPERM;

	FUNC4(&priv_dev->lock, flags);

	FUNC2(priv_dev, ep->desc->bEndpointAddress);

	if (!value) {
		priv_ep->flags &= ~EP_WEDGE;
		ret = FUNC0(priv_ep);
	} else {
		FUNC1(priv_ep);
	}

	FUNC5(&priv_dev->lock, flags);

	return ret;
}