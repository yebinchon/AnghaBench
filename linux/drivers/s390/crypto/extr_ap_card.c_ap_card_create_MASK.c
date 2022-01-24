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
struct TYPE_3__ {int /*<<< orphan*/ * type; int /*<<< orphan*/  release; } ;
struct TYPE_4__ {int device_type; TYPE_1__ device; } ;
struct ap_card {int raw_hwtype; int queue_depth; unsigned int functions; int id; TYPE_2__ ap_dev; int /*<<< orphan*/  queues; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ap_card_device_release ; 
 int /*<<< orphan*/  ap_card_type ; 
 struct ap_card* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct ap_card *FUNC2(int id, int queue_depth, int raw_type,
			       int comp_type, unsigned int functions)
{
	struct ap_card *ac;

	ac = FUNC1(sizeof(*ac), GFP_KERNEL);
	if (!ac)
		return NULL;
	FUNC0(&ac->list);
	FUNC0(&ac->queues);
	ac->ap_dev.device.release = ap_card_device_release;
	ac->ap_dev.device.type = &ap_card_type;
	ac->ap_dev.device_type = comp_type;
	ac->raw_hwtype = raw_type;
	ac->queue_depth = queue_depth;
	ac->functions = functions;
	ac->id = id;
	return ac;
}