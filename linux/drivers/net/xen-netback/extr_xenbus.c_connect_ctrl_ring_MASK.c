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
struct xenvif {int dummy; } ;
struct xenbus_device {int /*<<< orphan*/  otherend; } ;
struct backend_info {struct xenvif* vif; struct xenbus_device* dev; } ;
typedef  unsigned int grant_ref_t ;

/* Variables and functions */
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC0 (struct xenbus_device*,int,char*,unsigned int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,unsigned int*) ; 
 int FUNC2 (struct xenvif*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct backend_info *be)
{
	struct xenbus_device *dev = be->dev;
	struct xenvif *vif = be->vif;
	unsigned int val;
	grant_ref_t ring_ref;
	unsigned int evtchn;
	int err;

	err = FUNC1(XBT_NIL, dev->otherend,
			   "ctrl-ring-ref", "%u", &val);
	if (err < 0)
		goto done; /* The frontend does not have a control ring */

	ring_ref = val;

	err = FUNC1(XBT_NIL, dev->otherend,
			   "event-channel-ctrl", "%u", &val);
	if (err < 0) {
		FUNC0(dev, err,
				 "reading %s/event-channel-ctrl",
				 dev->otherend);
		goto fail;
	}

	evtchn = val;

	err = FUNC2(vif, ring_ref, evtchn);
	if (err) {
		FUNC0(dev, err,
				 "mapping shared-frame %u port %u",
				 ring_ref, evtchn);
		goto fail;
	}

done:
	return 0;

fail:
	return err;
}