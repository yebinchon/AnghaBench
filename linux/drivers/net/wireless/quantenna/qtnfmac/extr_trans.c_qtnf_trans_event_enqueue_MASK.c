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
struct sk_buff {int dummy; } ;
struct qtnf_qlink_transport {scalar_t__ event_queue_max_len; int /*<<< orphan*/  event_queue; } ;
struct qtnf_bus {int /*<<< orphan*/  event_work; int /*<<< orphan*/  workqueue; struct qtnf_qlink_transport trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct qtnf_bus *bus, struct sk_buff *skb)
{
	struct qtnf_qlink_transport *trans = &bus->trans;

	if (FUNC1(FUNC4(&trans->event_queue) <
		   trans->event_queue_max_len)) {
		FUNC5(&trans->event_queue, skb);
		FUNC3(bus->workqueue, &bus->event_work);
	} else {
		FUNC2("event dropped due to queue overflow\n");
		FUNC0(skb);
		return -1;
	}

	return 0;
}