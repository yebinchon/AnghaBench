#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ qlen; int /*<<< orphan*/  lock; } ;
struct fcoe_port {int fcoe_pending_queue_active; scalar_t__ min_queue_depth; scalar_t__ max_queue_depth; TYPE_1__ fcoe_pending_queue; int /*<<< orphan*/  timer; } ;
struct fc_lport {int qfull; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*) ; 
 scalar_t__ jiffies ; 
 struct fcoe_port* FUNC4 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct fc_lport *lport, struct sk_buff *skb)
{
	struct fcoe_port *port = FUNC4(lport);
	int rc;

	FUNC6(&port->fcoe_pending_queue.lock);

	if (skb)
		FUNC2(&port->fcoe_pending_queue, skb);

	if (port->fcoe_pending_queue_active)
		goto out;
	port->fcoe_pending_queue_active = 1;

	while (port->fcoe_pending_queue.qlen) {
		/* keep qlen > 0 until fcoe_start_io succeeds */
		port->fcoe_pending_queue.qlen++;
		skb = FUNC0(&port->fcoe_pending_queue);

		FUNC7(&port->fcoe_pending_queue.lock);
		rc = FUNC3(skb);
		FUNC6(&port->fcoe_pending_queue.lock);

		if (rc) {
			FUNC1(&port->fcoe_pending_queue, skb);
			/* undo temporary increment above */
			port->fcoe_pending_queue.qlen--;
			break;
		}
		/* undo temporary increment above */
		port->fcoe_pending_queue.qlen--;
	}

	if (port->fcoe_pending_queue.qlen < port->min_queue_depth)
		lport->qfull = 0;
	if (port->fcoe_pending_queue.qlen && !FUNC8(&port->timer))
		FUNC5(&port->timer, jiffies + 2);
	port->fcoe_pending_queue_active = 0;
out:
	if (port->fcoe_pending_queue.qlen > port->max_queue_depth)
		lport->qfull = 1;
	FUNC7(&port->fcoe_pending_queue.lock);
}