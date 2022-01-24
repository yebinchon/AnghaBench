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
struct xenfb_info {int irq; int /*<<< orphan*/  page; } ;
struct xenbus_transaction {int dummy; } ;
struct xenbus_device {int /*<<< orphan*/  nodename; int /*<<< orphan*/  devicetype; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  XEN_IO_PROTO_ABI_NATIVE ; 
 int /*<<< orphan*/  XenbusStateInitialised ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xenfb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct xenfb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xenbus_device*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct xenbus_device*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct xenbus_device*,int) ; 
 int FUNC6 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct xenbus_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct xenbus_transaction,int) ; 
 int FUNC9 (struct xenbus_transaction*) ; 
 int /*<<< orphan*/  xenfb_event_handler ; 

__attribute__((used)) static int FUNC10(struct xenbus_device *dev,
				 struct xenfb_info *info)
{
	int ret, evtchn, irq;
	struct xenbus_transaction xbt;

	ret = FUNC3(dev, &evtchn);
	if (ret)
		return ret;
	irq = FUNC0(evtchn, xenfb_event_handler,
					0, dev->devicetype, info);
	if (irq < 0) {
		FUNC5(dev, evtchn);
		FUNC4(dev, ret, "bind_evtchn_to_irqhandler");
		return irq;
	}
 again:
	ret = FUNC9(&xbt);
	if (ret) {
		FUNC4(dev, ret, "starting transaction");
		goto unbind_irq;
	}
	ret = FUNC6(xbt, dev->nodename, "page-ref", "%lu",
			    FUNC2(info->page));
	if (ret)
		goto error_xenbus;
	ret = FUNC6(xbt, dev->nodename, "event-channel", "%u",
			    evtchn);
	if (ret)
		goto error_xenbus;
	ret = FUNC6(xbt, dev->nodename, "protocol", "%s",
			    XEN_IO_PROTO_ABI_NATIVE);
	if (ret)
		goto error_xenbus;
	ret = FUNC6(xbt, dev->nodename, "feature-update", "1");
	if (ret)
		goto error_xenbus;
	ret = FUNC8(xbt, 0);
	if (ret) {
		if (ret == -EAGAIN)
			goto again;
		FUNC4(dev, ret, "completing transaction");
		goto unbind_irq;
	}

	FUNC7(dev, XenbusStateInitialised);
	info->irq = irq;
	return 0;

 error_xenbus:
	FUNC8(xbt, 1);
	FUNC4(dev, ret, "writing xenstore");
 unbind_irq:
	FUNC1(irq, info);
	return ret;
}