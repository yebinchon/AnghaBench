#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct xenvif_queue {unsigned int id; unsigned long credit_bytes; unsigned long remaining_credit; unsigned long credit_usec; int /*<<< orphan*/  name; TYPE_1__* vif; } ;
struct xenbus_device {int /*<<< orphan*/  nodename; int /*<<< orphan*/  otherend; } ;
struct backend_info {int have_hotplug_status_watch; TYPE_1__* vif; int /*<<< orphan*/  hotplug_status_watch; struct xenbus_device* dev; } ;
struct TYPE_11__ {char* name; } ;
struct TYPE_10__ {unsigned int num_queues; unsigned int stalled_queues; struct xenvif_queue* queues; TYPE_7__* dev; int /*<<< orphan*/  fe_dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int FUNC1 (struct backend_info*) ; 
 int FUNC2 (struct backend_info*,struct xenvif_queue*) ; 
 int /*<<< orphan*/  hotplug_status_changed ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (struct backend_info*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct backend_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct xenvif_queue*) ; 
 struct xenvif_queue* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct xenbus_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct xenbus_device*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC15 (struct xenbus_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (struct xenbus_device*,int,char*,...) ; 
 unsigned int FUNC18 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC19 (struct xenbus_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int FUNC25 (struct xenvif_queue*) ; 
 unsigned int xenvif_max_queues ; 

__attribute__((used)) static void FUNC26(struct backend_info *be)
{
	int err;
	struct xenbus_device *dev = be->dev;
	unsigned long credit_bytes, credit_usec;
	unsigned int queue_index;
	unsigned int requested_num_queues;
	struct xenvif_queue *queue;

	/* Check whether the frontend requested multiple queues
	 * and read the number requested.
	 */
	requested_num_queues = FUNC18(dev->otherend,
					"multi-queue-num-queues", 1);
	if (requested_num_queues > xenvif_max_queues) {
		/* buggy or malicious guest */
		FUNC17(dev, -EINVAL,
				 "guest requested %u queues, exceeding the maximum of %u.",
				 requested_num_queues, xenvif_max_queues);
		return;
	}

	err = FUNC13(dev, be->vif->fe_dev_addr);
	if (err) {
		FUNC17(dev, err, "parsing %s/mac", dev->nodename);
		return;
	}

	FUNC14(dev, &credit_bytes, &credit_usec);
	FUNC16(be->vif);
	FUNC15(dev, be->vif);
	FUNC6(be);

	err = FUNC1(be);
	if (err) {
		FUNC17(dev, err, "connecting control ring");
		return;
	}

	/* Use the number of queues requested by the frontend */
	be->vif->queues = FUNC12(FUNC0(requested_num_queues,
					     sizeof(struct xenvif_queue)));
	if (!be->vif->queues) {
		FUNC17(dev, -ENOMEM,
				 "allocating queues");
		return;
	}

	be->vif->num_queues = requested_num_queues;
	be->vif->stalled_queues = requested_num_queues;

	for (queue_index = 0; queue_index < requested_num_queues; ++queue_index) {
		queue = &be->vif->queues[queue_index];
		queue->vif = be->vif;
		queue->id = queue_index;
		FUNC9(queue->name, sizeof(queue->name), "%s-q%u",
				be->vif->dev->name, queue->id);

		err = FUNC25(queue);
		if (err) {
			/* xenvif_init_queue() cleans up after itself on
			 * failure, but we need to clean up any previously
			 * initialised queues. Set num_queues to i so that
			 * earlier queues can be destroyed using the regular
			 * disconnect logic.
			 */
			be->vif->num_queues = queue_index;
			goto err;
		}

		queue->credit_bytes = credit_bytes;
		queue->remaining_credit = credit_bytes;
		queue->credit_usec = credit_usec;

		err = FUNC2(be, queue);
		if (err) {
			/* connect_data_rings() cleans up after itself on
			 * failure, but we need to clean up after
			 * xenvif_init_queue() here, and also clean up any
			 * previously initialised queues.
			 */
			FUNC22(queue);
			be->vif->num_queues = queue_index;
			goto err;
		}
	}

#ifdef CONFIG_DEBUG_FS
	xenvif_debugfs_addif(be->vif);
#endif /* CONFIG_DEBUG_FS */

	/* Initialisation completed, tell core driver the number of
	 * active queues.
	 */
	FUNC7();
	FUNC4(be->vif->dev, requested_num_queues);
	FUNC3(be->vif->dev, requested_num_queues);
	FUNC8();

	FUNC20(be->vif);

	FUNC10(be);
	err = FUNC19(dev, &be->hotplug_status_watch,
				   hotplug_status_changed,
				   "%s/%s", dev->nodename, "hotplug-status");
	if (!err)
		be->have_hotplug_status_watch = 1;

	FUNC5(be->vif->dev);

	return;

err:
	if (be->vif->num_queues > 0)
		FUNC24(be->vif); /* Clean up existing queues */
	for (queue_index = 0; queue_index < be->vif->num_queues; ++queue_index)
		FUNC22(&be->vif->queues[queue_index]);
	FUNC11(be->vif->queues);
	be->vif->queues = NULL;
	be->vif->num_queues = 0;
	FUNC23(be->vif);
	return;
}