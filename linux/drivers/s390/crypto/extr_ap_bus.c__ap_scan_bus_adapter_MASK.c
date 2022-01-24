#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {struct device* parent; int /*<<< orphan*/ * bus; } ;
struct TYPE_3__ {struct device device; } ;
struct ap_queue {scalar_t__ state; TYPE_1__ ap_dev; struct ap_card* card; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {struct device device; } ;
struct ap_card {int raw_hwtype; unsigned int functions; TYPE_2__ ap_dev; } ;
typedef  scalar_t__ ap_qid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int AP_DOMAINS ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ AP_STATE_BORKED ; 
 int /*<<< orphan*/  DBF_DEBUG ; 
 int /*<<< orphan*/  DBF_INFO ; 
 int ENODEV ; 
 int /*<<< orphan*/  __ap_queue_devices_with_id_unregister ; 
 int /*<<< orphan*/  __match_card_device_with_id ; 
 int /*<<< orphan*/  __match_queue_device_with_qid ; 
 int /*<<< orphan*/  ap_bus_type ; 
 struct ap_card* FUNC2 (int,int,int,int,unsigned int) ; 
 int FUNC3 (scalar_t__,int,unsigned int) ; 
 int FUNC4 (scalar_t__,int*,int*,unsigned int*) ; 
 struct ap_queue* FUNC5 (scalar_t__,int) ; 
 struct device* ap_root_device ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct device* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,int,...) ; 
 int FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct ap_card* FUNC17 (struct device*) ; 
 struct ap_queue* FUNC18 (struct device*) ; 

__attribute__((used)) static void FUNC19(int id)
{
	ap_qid_t qid;
	unsigned int func;
	struct ap_card *ac;
	struct device *dev;
	struct ap_queue *aq;
	int rc, dom, depth, type, comp_type, borked;

	/* check if there is a card device registered with this id */
	dev = FUNC8(&ap_bus_type, NULL,
			      (void *)(long) id,
			      __match_card_device_with_id);
	ac = dev ? FUNC17(dev) : NULL;
	if (!FUNC6(id)) {
		if (dev) {
			/* Card device has been removed from configuration */
			FUNC9(&ap_bus_type, NULL,
					 (void *)(long) id,
					 __ap_queue_devices_with_id_unregister);
			FUNC12(dev);
			FUNC14(dev);
		}
		return;
	}

	/*
	 * This card id is enabled in the configuration. If we already have
	 * a card device with this id, check if type and functions are still
	 * the very same. Also verify that at least one queue is available.
	 */
	if (ac) {
		/* find the first valid queue */
		for (dom = 0; dom < AP_DOMAINS; dom++) {
			qid = FUNC1(id, dom);
			if (FUNC4(qid, &depth, &type, &func) == 0)
				break;
		}
		borked = 0;
		if (dom >= AP_DOMAINS) {
			/* no accessible queue on this card */
			borked = 1;
		} else if (ac->raw_hwtype != type) {
			/* card type has changed */
			FUNC0(DBF_INFO, "card=%02x type changed.\n", id);
			borked = 1;
		} else if (ac->functions != func) {
			/* card functions have changed */
			FUNC0(DBF_INFO, "card=%02x functions changed.\n", id);
			borked = 1;
		}
		if (borked) {
			/* unregister card device and associated queues */
			FUNC9(&ap_bus_type, NULL,
					 (void *)(long) id,
					 __ap_queue_devices_with_id_unregister);
			FUNC12(dev);
			FUNC14(dev);
			/* go back if there is no valid queue on this card */
			if (dom >= AP_DOMAINS)
				return;
			ac = NULL;
		}
	}

	/*
	 * Go through all possible queue ids. Check and maybe create or release
	 * queue devices for this card. If there exists no card device yet,
	 * create a card device also.
	 */
	for (dom = 0; dom < AP_DOMAINS; dom++) {
		qid = FUNC1(id, dom);
		dev = FUNC8(&ap_bus_type, NULL,
				      (void *)(long) qid,
				      __match_queue_device_with_qid);
		aq = dev ? FUNC18(dev) : NULL;
		if (!FUNC7(dom)) {
			if (dev) {
				/* Queue device exists but has been
				 * removed from configuration.
				 */
				FUNC12(dev);
				FUNC14(dev);
			}
			continue;
		}
		/* try to fetch infos about this queue */
		rc = FUNC4(qid, &depth, &type, &func);
		if (dev) {
			if (rc == -ENODEV)
				borked = 1;
			else {
				FUNC15(&aq->lock);
				borked = aq->state == AP_STATE_BORKED;
				FUNC16(&aq->lock);
			}
			if (borked) {
				/* Remove broken device */
				FUNC0(DBF_DEBUG,
				       "removing broken queue=%02x.%04x\n",
				       id, dom);
				FUNC12(dev);
			}
			FUNC14(dev);
			continue;
		}
		if (rc)
			continue;
		/* a new queue device is needed, check out comp type */
		comp_type = FUNC3(qid, type, func);
		if (!comp_type)
			continue;
		/* maybe a card device needs to be created first */
		if (!ac) {
			ac = FUNC2(id, depth, type, comp_type, func);
			if (!ac)
				continue;
			ac->ap_dev.device.bus = &ap_bus_type;
			ac->ap_dev.device.parent = ap_root_device;
			FUNC10(&ac->ap_dev.device, "card%02x", id);
			/* Register card device with AP bus */
			rc = FUNC11(&ac->ap_dev.device);
			if (rc) {
				FUNC14(&ac->ap_dev.device);
				ac = NULL;
				break;
			}
			/* get it and thus adjust reference counter */
			FUNC13(&ac->ap_dev.device);
		}
		/* now create the new queue device */
		aq = FUNC5(qid, comp_type);
		if (!aq)
			continue;
		aq->card = ac;
		aq->ap_dev.device.bus = &ap_bus_type;
		aq->ap_dev.device.parent = &ac->ap_dev.device;
		FUNC10(&aq->ap_dev.device, "%02x.%04x", id, dom);
		/* Register queue device */
		rc = FUNC11(&aq->ap_dev.device);
		if (rc) {
			FUNC14(&aq->ap_dev.device);
			continue;
		}
	} /* end domain loop */

	if (ac)
		FUNC14(&ac->ap_dev.device);
}