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
struct ap_queue {int /*<<< orphan*/  timeout; int /*<<< orphan*/  requestq; int /*<<< orphan*/  pendingq; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  interrupt; int /*<<< orphan*/  state; int /*<<< orphan*/  qid; TYPE_2__ ap_dev; } ;
typedef  int /*<<< orphan*/  ap_qid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AP_INTR_DISABLED ; 
 int /*<<< orphan*/  AP_STATE_RESET_START ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ap_queue_device_release ; 
 int /*<<< orphan*/  ap_queue_type ; 
 int /*<<< orphan*/  ap_request_timeout ; 
 struct ap_queue* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct ap_queue *FUNC4(ap_qid_t qid, int device_type)
{
	struct ap_queue *aq;

	aq = FUNC1(sizeof(*aq), GFP_KERNEL);
	if (!aq)
		return NULL;
	aq->ap_dev.device.release = ap_queue_device_release;
	aq->ap_dev.device.type = &ap_queue_type;
	aq->ap_dev.device_type = device_type;
	aq->qid = qid;
	aq->state = AP_STATE_RESET_START;
	aq->interrupt = AP_INTR_DISABLED;
	FUNC2(&aq->lock);
	FUNC0(&aq->list);
	FUNC0(&aq->pendingq);
	FUNC0(&aq->requestq);
	FUNC3(&aq->timeout, ap_request_timeout, 0);

	return aq;
}