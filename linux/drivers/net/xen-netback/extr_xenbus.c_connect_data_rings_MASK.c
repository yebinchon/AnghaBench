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
struct xenvif_queue {int id; TYPE_1__* vif; } ;
struct xenbus_device {char* otherend; } ;
struct backend_info {struct xenbus_device* dev; } ;
struct TYPE_2__ {unsigned int num_queues; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 size_t const FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct xenbus_device*,int,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,char*,char*,unsigned int*) ; 
 int FUNC8 (struct xenvif_queue*,unsigned long,unsigned long,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct backend_info *be,
			      struct xenvif_queue *queue)
{
	struct xenbus_device *dev = be->dev;
	unsigned int num_queues = queue->vif->num_queues;
	unsigned long tx_ring_ref, rx_ring_ref;
	unsigned int tx_evtchn, rx_evtchn;
	int err;
	char *xspath;
	size_t xspathsize;
	const size_t xenstore_path_ext_size = 11; /* sufficient for "/queue-NNN" */

	/* If the frontend requested 1 queue, or we have fallen back
	 * to single queue due to lack of frontend support for multi-
	 * queue, expect the remaining XenStore keys in the toplevel
	 * directory. Otherwise, expect them in a subdirectory called
	 * queue-N.
	 */
	if (num_queues == 1) {
		xspath = FUNC1(FUNC4(dev->otherend) + 1, GFP_KERNEL);
		if (!xspath) {
			FUNC5(dev, -ENOMEM,
					 "reading ring references");
			return -ENOMEM;
		}
		FUNC3(xspath, dev->otherend);
	} else {
		xspathsize = FUNC4(dev->otherend) + xenstore_path_ext_size;
		xspath = FUNC1(xspathsize, GFP_KERNEL);
		if (!xspath) {
			FUNC5(dev, -ENOMEM,
					 "reading ring references");
			return -ENOMEM;
		}
		FUNC2(xspath, xspathsize, "%s/queue-%u", dev->otherend,
			 queue->id);
	}

	err = FUNC6(XBT_NIL, xspath,
			    "tx-ring-ref", "%lu", &tx_ring_ref,
			    "rx-ring-ref", "%lu", &rx_ring_ref, NULL);
	if (err) {
		FUNC5(dev, err,
				 "reading %s/ring-ref",
				 xspath);
		goto err;
	}

	/* Try split event channels first, then single event channel. */
	err = FUNC6(XBT_NIL, xspath,
			    "event-channel-tx", "%u", &tx_evtchn,
			    "event-channel-rx", "%u", &rx_evtchn, NULL);
	if (err < 0) {
		err = FUNC7(XBT_NIL, xspath,
				   "event-channel", "%u", &tx_evtchn);
		if (err < 0) {
			FUNC5(dev, err,
					 "reading %s/event-channel(-tx/rx)",
					 xspath);
			goto err;
		}
		rx_evtchn = tx_evtchn;
	}

	/* Map the shared frame, irq etc. */
	err = FUNC8(queue, tx_ring_ref, rx_ring_ref,
				  tx_evtchn, rx_evtchn);
	if (err) {
		FUNC5(dev, err,
				 "mapping shared-frames %lu/%lu port tx %u rx %u",
				 tx_ring_ref, rx_ring_ref,
				 tx_evtchn, rx_evtchn);
		goto err;
	}

	err = 0;
err: /* Regular return falls through with err == 0 */
	FUNC0(xspath);
	return err;
}