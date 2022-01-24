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
struct qcom_glink {int /*<<< orphan*/  dev; int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  lcids; } ;
struct glink_channel {int /*<<< orphan*/  open_ack; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct glink_channel* FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct qcom_glink *glink, unsigned int lcid)
{
	struct glink_channel *channel;

	FUNC3(&glink->idr_lock);
	channel = FUNC2(&glink->lcids, lcid);
	FUNC4(&glink->idr_lock);
	if (!channel) {
		FUNC1(glink->dev, "Invalid open ack packet\n");
		return -EINVAL;
	}

	FUNC0(&channel->open_ack);

	return 0;
}