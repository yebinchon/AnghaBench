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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct qcom_glink {int /*<<< orphan*/  dev; int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  rcids; } ;
struct glink_core_rx_intent {int in_use; int /*<<< orphan*/  id; } ;
struct glink_channel {int /*<<< orphan*/  intent_lock; int /*<<< orphan*/  riids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct glink_core_rx_intent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct qcom_glink *glink,
				      u32 cid, uint32_t iid,
				      bool reuse)
{
	struct glink_core_rx_intent *intent;
	struct glink_channel *channel;
	unsigned long flags;

	FUNC4(&glink->idr_lock, flags);
	channel = FUNC1(&glink->rcids, cid);
	FUNC5(&glink->idr_lock, flags);
	if (!channel) {
		FUNC0(glink->dev, "invalid channel id received\n");
		return;
	}

	FUNC4(&channel->intent_lock, flags);
	intent = FUNC1(&channel->riids, iid);

	if (!intent) {
		FUNC5(&channel->intent_lock, flags);
		FUNC0(glink->dev, "invalid intent id received\n");
		return;
	}

	intent->in_use = false;

	if (!reuse) {
		FUNC2(&channel->riids, intent->id);
		FUNC3(intent);
	}
	FUNC5(&channel->intent_lock, flags);
}