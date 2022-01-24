#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int state; int num_cmds; int /*<<< orphan*/ * cmds; } ;
struct rpmh_request {TYPE_1__ msg; } ;
struct rpmh_ctrlr {int dummy; } ;
struct device {int dummy; } ;
struct cache_req {int dummy; } ;
typedef  enum rpmh_state { ____Placeholder_rpmh_state } rpmh_state ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct cache_req*) ; 
 int FUNC1 (struct cache_req*) ; 
 int RPMH_ACTIVE_ONLY_STATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cache_req* FUNC3 (struct rpmh_ctrlr*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rpmh_ctrlr*) ; 
 struct rpmh_ctrlr* FUNC5 (struct device const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC9(const struct device *dev, enum rpmh_state state,
			struct rpmh_request *rpm_msg)
{
	struct rpmh_ctrlr *ctrlr = FUNC5(dev);
	int ret = -EINVAL;
	struct cache_req *req;
	int i;

	rpm_msg->msg.state = state;

	/* Cache the request in our store and link the payload */
	for (i = 0; i < rpm_msg->msg.num_cmds; i++) {
		req = FUNC3(ctrlr, state, &rpm_msg->msg.cmds[i]);
		if (FUNC0(req))
			return FUNC1(req);
	}

	rpm_msg->msg.state = state;

	if (state == RPMH_ACTIVE_ONLY_STATE) {
		FUNC2(FUNC6());
		ret = FUNC7(FUNC4(ctrlr), &rpm_msg->msg);
	} else {
		/* Clean up our call by spoofing tx_done */
		ret = 0;
		FUNC8(&rpm_msg->msg, ret);
	}

	return ret;
}