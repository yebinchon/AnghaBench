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
struct qcom_glink {scalar_t__ intentless; } ;
struct glink_core_rx_intent {int /*<<< orphan*/  node; int /*<<< orphan*/  id; int /*<<< orphan*/  reuse; struct glink_core_rx_intent* data; } ;
struct glink_channel {int /*<<< orphan*/  intent_work; int /*<<< orphan*/  intent_lock; int /*<<< orphan*/  done_intents; int /*<<< orphan*/  liids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct glink_core_rx_intent*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct qcom_glink *glink,
			       struct glink_channel *channel,
			       struct glink_core_rx_intent *intent)
{
	/* We don't send RX_DONE to intentless systems */
	if (glink->intentless) {
		FUNC1(intent->data);
		FUNC1(intent);
		return;
	}

	/* Take it off the tree of receive intents */
	if (!intent->reuse) {
		FUNC4(&channel->intent_lock);
		FUNC0(&channel->liids, intent->id);
		FUNC5(&channel->intent_lock);
	}

	/* Schedule the sending of a rx_done indication */
	FUNC4(&channel->intent_lock);
	FUNC2(&intent->node, &channel->done_intents);
	FUNC5(&channel->intent_lock);

	FUNC3(&channel->intent_work);
}