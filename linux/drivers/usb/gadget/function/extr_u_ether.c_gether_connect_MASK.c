#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct gether {TYPE_1__* in_ep; TYPE_1__* out_ep; int /*<<< orphan*/  (* close ) (struct gether*) ;int /*<<< orphan*/  (* open ) (struct gether*) ;int /*<<< orphan*/  wrap; int /*<<< orphan*/  unwrap; int /*<<< orphan*/  header_len; int /*<<< orphan*/  is_zlp_ok; struct eth_dev* ioport; } ;
struct eth_dev {struct net_device* net; int /*<<< orphan*/  lock; struct gether* port_usb; int /*<<< orphan*/  wrap; int /*<<< orphan*/  unwrap; int /*<<< orphan*/  header_len; int /*<<< orphan*/  qmult; int /*<<< orphan*/  gadget; int /*<<< orphan*/  no_skb_reserve; int /*<<< orphan*/  zlp; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; struct eth_dev* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eth_dev*,char*,int /*<<< orphan*/ ,...) ; 
 int EINVAL ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC2 (struct eth_dev*,struct gether*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eth_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct gether*) ; 
 int /*<<< orphan*/  FUNC11 (struct gether*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*) ; 

struct net_device *FUNC14(struct gether *link)
{
	struct eth_dev		*dev = link->ioport;
	int			result = 0;

	if (!dev)
		return FUNC1(-EINVAL);

	link->in_ep->driver_data = dev;
	result = FUNC13(link->in_ep);
	if (result != 0) {
		FUNC0(dev, "enable %s --> %d\n",
			link->in_ep->name, result);
		goto fail0;
	}

	link->out_ep->driver_data = dev;
	result = FUNC13(link->out_ep);
	if (result != 0) {
		FUNC0(dev, "enable %s --> %d\n",
			link->out_ep->name, result);
		goto fail1;
	}

	if (result == 0)
		result = FUNC2(dev, link, FUNC7(dev->gadget,
					dev->qmult));

	if (result == 0) {
		dev->zlp = link->is_zlp_ok;
		dev->no_skb_reserve = FUNC4(dev->gadget);
		FUNC0(dev, "qlen %d\n", FUNC7(dev->gadget, dev->qmult));

		dev->header_len = link->header_len;
		dev->unwrap = link->unwrap;
		dev->wrap = link->wrap;

		FUNC8(&dev->lock);
		dev->port_usb = link;
		if (FUNC6(dev->net)) {
			if (link->open)
				link->open(link);
		} else {
			if (link->close)
				link->close(link);
		}
		FUNC9(&dev->lock);

		FUNC5(dev->net);
		if (FUNC6(dev->net))
			FUNC3(dev, GFP_ATOMIC);

	/* on error, disable any endpoints  */
	} else {
		(void) FUNC12(link->out_ep);
fail1:
		(void) FUNC12(link->in_ep);
	}
fail0:
	/* caller is responsible for cleanup on error */
	if (result < 0)
		return FUNC1(result);
	return dev->net;
}