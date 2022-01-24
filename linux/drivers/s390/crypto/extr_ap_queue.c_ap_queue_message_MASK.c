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
struct ap_queue {int /*<<< orphan*/  lock; TYPE_1__* card; int /*<<< orphan*/  total_request_count; int /*<<< orphan*/  requestq_count; int /*<<< orphan*/  requestq; } ;
struct ap_message {int /*<<< orphan*/  list; int /*<<< orphan*/  receive; } ;
struct TYPE_2__ {int /*<<< orphan*/  total_request_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  AP_EVENT_POLL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ap_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ap_queue *aq, struct ap_message *ap_msg)
{
	/* For asynchronous message handling a valid receive-callback
	 * is required.
	 */
	FUNC0(!ap_msg->receive);

	FUNC5(&aq->lock);
	/* Queue the message. */
	FUNC4(&ap_msg->list, &aq->requestq);
	aq->requestq_count++;
	aq->total_request_count++;
	FUNC3(&aq->card->total_request_count);
	/* Send/receive as many request from the queue as possible. */
	FUNC2(FUNC1(aq, AP_EVENT_POLL));
	FUNC6(&aq->lock);
}