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
struct xenbus_transaction {int dummy; } ;
struct xenbus_device_id {int dummy; } ;
struct xenbus_device {int /*<<< orphan*/  nodename; int /*<<< orphan*/  dev; } ;
struct backend_info {char const* hotplug_script; int /*<<< orphan*/  state; struct xenbus_device* dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 struct xenbus_transaction XBT_NIL ; 
 int /*<<< orphan*/  XenbusStateInitialising ; 
 int FUNC2 (struct backend_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct backend_info*) ; 
 struct backend_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int separate_tx_rx_irq ; 
 int /*<<< orphan*/  FUNC7 (struct xenbus_device*,int,char*,...) ; 
 int FUNC8 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,char*,int) ; 
 char* FUNC9 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct xenbus_device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct xenbus_transaction,int) ; 
 int FUNC12 (struct xenbus_transaction*) ; 
 int xenvif_max_queues ; 

__attribute__((used)) static int FUNC13(struct xenbus_device *dev,
			 const struct xenbus_device_id *id)
{
	const char *message;
	struct xenbus_transaction xbt;
	int err;
	int sg;
	const char *script;
	struct backend_info *be = FUNC4(sizeof(struct backend_info),
					  GFP_KERNEL);
	if (!be) {
		FUNC7(dev, -ENOMEM,
				 "allocating backend structure");
		return -ENOMEM;
	}

	be->dev = dev;
	FUNC3(&dev->dev, be);

	be->state = XenbusStateInitialising;
	err = FUNC10(dev, XenbusStateInitialising);
	if (err)
		goto fail;

	sg = 1;

	do {
		err = FUNC12(&xbt);
		if (err) {
			FUNC7(dev, err, "starting transaction");
			goto fail;
		}

		err = FUNC8(xbt, dev->nodename, "feature-sg", "%d", sg);
		if (err) {
			message = "writing feature-sg";
			goto abort_transaction;
		}

		err = FUNC8(xbt, dev->nodename, "feature-gso-tcpv4",
				    "%d", sg);
		if (err) {
			message = "writing feature-gso-tcpv4";
			goto abort_transaction;
		}

		err = FUNC8(xbt, dev->nodename, "feature-gso-tcpv6",
				    "%d", sg);
		if (err) {
			message = "writing feature-gso-tcpv6";
			goto abort_transaction;
		}

		/* We support partial checksum setup for IPv6 packets */
		err = FUNC8(xbt, dev->nodename,
				    "feature-ipv6-csum-offload",
				    "%d", 1);
		if (err) {
			message = "writing feature-ipv6-csum-offload";
			goto abort_transaction;
		}

		/* We support rx-copy path. */
		err = FUNC8(xbt, dev->nodename,
				    "feature-rx-copy", "%d", 1);
		if (err) {
			message = "writing feature-rx-copy";
			goto abort_transaction;
		}

		/*
		 * We don't support rx-flip path (except old guests who don't
		 * grok this feature flag).
		 */
		err = FUNC8(xbt, dev->nodename,
				    "feature-rx-flip", "%d", 0);
		if (err) {
			message = "writing feature-rx-flip";
			goto abort_transaction;
		}

		/* We support dynamic multicast-control. */
		err = FUNC8(xbt, dev->nodename,
				    "feature-multicast-control", "%d", 1);
		if (err) {
			message = "writing feature-multicast-control";
			goto abort_transaction;
		}

		err = FUNC8(xbt, dev->nodename,
				    "feature-dynamic-multicast-control",
				    "%d", 1);
		if (err) {
			message = "writing feature-dynamic-multicast-control";
			goto abort_transaction;
		}

		err = FUNC11(xbt, 0);
	} while (err == -EAGAIN);

	if (err) {
		FUNC7(dev, err, "completing transaction");
		goto fail;
	}

	/*
	 * Split event channels support, this is optional so it is not
	 * put inside the above loop.
	 */
	err = FUNC8(XBT_NIL, dev->nodename,
			    "feature-split-event-channels",
			    "%u", separate_tx_rx_irq);
	if (err)
		FUNC6("Error writing feature-split-event-channels\n");

	/* Multi-queue support: This is an optional feature. */
	err = FUNC8(XBT_NIL, dev->nodename,
			    "multi-queue-max-queues", "%u", xenvif_max_queues);
	if (err)
		FUNC6("Error writing multi-queue-max-queues\n");

	err = FUNC8(XBT_NIL, dev->nodename,
			    "feature-ctrl-ring",
			    "%u", true);
	if (err)
		FUNC6("Error writing feature-ctrl-ring\n");

	script = FUNC9(XBT_NIL, dev->nodename, "script", NULL);
	if (FUNC0(script)) {
		err = FUNC1(script);
		FUNC7(dev, err, "reading script");
		goto fail;
	}

	be->hotplug_script = script;


	/* This kicks hotplug scripts, so do it immediately. */
	err = FUNC2(be);
	if (err)
		goto fail;

	return 0;

abort_transaction:
	FUNC11(xbt, 1);
	FUNC7(dev, err, "%s", message);
fail:
	FUNC6("failed\n");
	FUNC5(dev);
	return err;
}