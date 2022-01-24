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
struct qcom_glink {int /*<<< orphan*/  dev; int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  rcids; } ;
struct glink_channel {int intent_req_result; int /*<<< orphan*/  intent_req_comp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct glink_channel* FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct qcom_glink *glink,
					     unsigned int cid, bool granted)
{
	struct glink_channel *channel;
	unsigned long flags;

	FUNC3(&glink->idr_lock, flags);
	channel = FUNC2(&glink->rcids, cid);
	FUNC4(&glink->idr_lock, flags);
	if (!channel) {
		FUNC1(glink->dev, "unable to find channel\n");
		return;
	}

	channel->intent_req_result = granted;
	FUNC0(&channel->intent_req_comp);
}