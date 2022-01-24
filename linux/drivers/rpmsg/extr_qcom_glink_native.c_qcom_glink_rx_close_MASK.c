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
struct rpmsg_channel_info {void* dst; void* src; int /*<<< orphan*/  name; } ;
struct qcom_glink {int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  rcids; int /*<<< orphan*/  dev; } ;
struct glink_channel {int /*<<< orphan*/  refcount; scalar_t__ rcid; int /*<<< orphan*/  name; scalar_t__ rpdev; int /*<<< orphan*/  intent_work; } ;

/* Variables and functions */
 void* RPMSG_ADDR_ANY ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct glink_channel* FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_glink_channel_release ; 
 int /*<<< orphan*/  FUNC5 (struct qcom_glink*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct rpmsg_channel_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct qcom_glink *glink, unsigned int rcid)
{
	struct rpmsg_channel_info chinfo;
	struct glink_channel *channel;
	unsigned long flags;

	FUNC7(&glink->idr_lock, flags);
	channel = FUNC2(&glink->rcids, rcid);
	FUNC8(&glink->idr_lock, flags);
	if (FUNC0(!channel, "close request on unknown channel\n"))
		return;

	/* cancel pending rx_done work */
	FUNC1(&channel->intent_work);

	if (channel->rpdev) {
		FUNC9(chinfo.name, channel->name, sizeof(chinfo.name));
		chinfo.src = RPMSG_ADDR_ANY;
		chinfo.dst = RPMSG_ADDR_ANY;

		FUNC6(glink->dev, &chinfo);
	}

	FUNC5(glink, channel->rcid);

	FUNC7(&glink->idr_lock, flags);
	FUNC3(&glink->rcids, channel->rcid);
	channel->rcid = 0;
	FUNC8(&glink->idr_lock, flags);

	FUNC4(&channel->refcount, qcom_glink_channel_release);
}