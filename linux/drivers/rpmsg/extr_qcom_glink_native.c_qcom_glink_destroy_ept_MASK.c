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
struct rpmsg_endpoint {int dummy; } ;
struct qcom_glink {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cb; } ;
struct glink_channel {int /*<<< orphan*/ * rpdev; int /*<<< orphan*/  recv_lock; TYPE_1__ ept; struct qcom_glink* glink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qcom_glink*,struct glink_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct glink_channel* FUNC3 (struct rpmsg_endpoint*) ; 

__attribute__((used)) static void FUNC4(struct rpmsg_endpoint *ept)
{
	struct glink_channel *channel = FUNC3(ept);
	struct qcom_glink *glink = channel->glink;
	unsigned long flags;

	FUNC1(&channel->recv_lock, flags);
	channel->ept.cb = NULL;
	FUNC2(&channel->recv_lock, flags);

	/* Decouple the potential rpdev from the channel */
	channel->rpdev = NULL;

	FUNC0(glink, channel);
}