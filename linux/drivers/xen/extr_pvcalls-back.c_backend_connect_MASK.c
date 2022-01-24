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
struct xenbus_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  otherend_id; int /*<<< orphan*/  otherend; } ;
struct pvcalls_fedata {int irq; int /*<<< orphan*/ * sring; int /*<<< orphan*/  list; int /*<<< orphan*/  socket_lock; int /*<<< orphan*/  socketpass_mappings; int /*<<< orphan*/  socket_mappings; struct xenbus_device* dev; int /*<<< orphan*/  ring; } ;
typedef  int grant_ref_t ;
struct TYPE_2__ {int /*<<< orphan*/  frontends_lock; int /*<<< orphan*/  frontends; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int XEN_PAGE_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct pvcalls_fedata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pvcalls_fedata*) ; 
 struct pvcalls_fedata* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pvcalls_back_event ; 
 TYPE_1__ pvcalls_back_global ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int,struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct xenbus_device*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct xenbus_device*,int*,int,void**) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct xenbus_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct xenbus_device *dev)
{
	int err, evtchn;
	grant_ref_t ring_ref;
	struct pvcalls_fedata *fedata = NULL;

	fedata = FUNC7(sizeof(struct pvcalls_fedata), GFP_KERNEL);
	if (!fedata)
		return -ENOMEM;

	fedata->irq = -1;
	err = FUNC15(XBT_NIL, dev->otherend, "port", "%u",
			   &evtchn);
	if (err != 1) {
		err = -EINVAL;
		FUNC13(dev, err, "reading %s/event-channel",
				 dev->otherend);
		goto error;
	}

	err = FUNC15(XBT_NIL, dev->otherend, "ring-ref", "%u", &ring_ref);
	if (err != 1) {
		err = -EINVAL;
		FUNC13(dev, err, "reading %s/ring-ref",
				 dev->otherend);
		goto error;
	}

	err = FUNC3(dev->otherend_id, evtchn);
	if (err < 0)
		goto error;
	fedata->irq = err;

	err = FUNC9(fedata->irq, NULL, pvcalls_back_event,
				   IRQF_ONESHOT, "pvcalls-back", dev);
	if (err < 0)
		goto error;

	err = FUNC14(dev, &ring_ref, 1,
				     (void **)&fedata->sring);
	if (err < 0)
		goto error;

	FUNC0(&fedata->ring, fedata->sring, XEN_PAGE_SIZE * 1);
	fedata->dev = dev;

	FUNC1(&fedata->socket_mappings);
	FUNC2(&fedata->socketpass_mappings, GFP_KERNEL);
	FUNC10(&fedata->socket_lock, 1);
	FUNC4(&dev->dev, fedata);

	FUNC5(&pvcalls_back_global.frontends_lock);
	FUNC8(&fedata->list, &pvcalls_back_global.frontends);
	FUNC12(&pvcalls_back_global.frontends_lock);

	return 0;

 error:
	if (fedata->irq >= 0)
		FUNC11(fedata->irq, dev);
	if (fedata->sring != NULL)
		FUNC16(dev, fedata->sring);
	FUNC6(fedata);
	return err;
}