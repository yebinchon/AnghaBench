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
struct qcom_glink {int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  lcids; } ;
struct glink_channel {int /*<<< orphan*/  refcount; scalar_t__ lcid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*) ; 
 struct glink_channel* FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_glink_channel_release ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct qcom_glink *glink, unsigned int lcid)
{
	struct glink_channel *channel;
	unsigned long flags;

	FUNC4(&glink->idr_lock, flags);
	channel = FUNC1(&glink->lcids, lcid);
	if (FUNC0(!channel, "close ack on unknown channel\n")) {
		FUNC5(&glink->idr_lock, flags);
		return;
	}

	FUNC2(&glink->lcids, channel->lcid);
	channel->lcid = 0;
	FUNC5(&glink->idr_lock, flags);

	FUNC3(&channel->refcount, qcom_glink_channel_release);
}