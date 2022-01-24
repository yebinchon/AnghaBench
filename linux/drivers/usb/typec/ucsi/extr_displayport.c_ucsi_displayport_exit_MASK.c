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
struct ucsi_dp {int vdo_size; TYPE_1__* con; int /*<<< orphan*/  work; int /*<<< orphan*/ * vdo_data; int /*<<< orphan*/  header; int /*<<< orphan*/  offset; int /*<<< orphan*/  override; } ;
struct ucsi_control {int /*<<< orphan*/  raw_cmd; } ;
struct typec_altmode {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  ucsi; int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMDT_RSP_ACK ; 
 int /*<<< orphan*/  CMD_EXIT_MODE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_TYPEC_DP_MODE ; 
 int /*<<< orphan*/  USB_TYPEC_DP_SID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct ucsi_dp* FUNC8 (struct typec_altmode*) ; 
 struct typec_altmode* FUNC9 (struct typec_altmode*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct ucsi_control*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct typec_altmode *alt)
{
	struct ucsi_dp *dp = FUNC8(alt);
	struct ucsi_control ctrl;
	int ret = 0;

	FUNC5(&dp->con->lock);

	if (!dp->override) {
		const struct typec_altmode *p = FUNC9(alt);

		FUNC4(&p->dev,
			 "firmware doesn't support alternate mode overriding\n");
		ret = -EOPNOTSUPP;
		goto out_unlock;
	}

	ctrl.raw_cmd = FUNC0(dp->con->num, 0, dp->offset, 0);
	ret = FUNC10(dp->con->ucsi, &ctrl, NULL, 0);
	if (ret < 0)
		goto out_unlock;

	dp->header = FUNC1(USB_TYPEC_DP_SID, 1, CMD_EXIT_MODE);
	dp->header |= FUNC3(USB_TYPEC_DP_MODE);
	dp->header |= FUNC2(CMDT_RSP_ACK);

	dp->vdo_data = NULL;
	dp->vdo_size = 1;

	FUNC7(&dp->work);

out_unlock:
	FUNC6(&dp->con->lock);

	return ret;
}