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
struct ucsi_control {int dummy; } ;
struct TYPE_2__ {int pwr_dir; scalar_t__ pwr_op_mode; } ;
struct ucsi_connector {int /*<<< orphan*/  lock; TYPE_1__ status; int /*<<< orphan*/  complete; int /*<<< orphan*/  partner; } ;
struct typec_capability {int dummy; } ;
typedef  enum typec_role { ____Placeholder_typec_role } typec_role ;

/* Variables and functions */
 int ENOTCONN ; 
 int EPROTO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ucsi_control,struct ucsi_connector*,int) ; 
 scalar_t__ UCSI_CONSTAT_PWR_OPMODE_PD ; 
 int /*<<< orphan*/  UCSI_SWAP_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ucsi_connector* FUNC4 (struct typec_capability const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucsi_connector*,int) ; 
 int FUNC6 (struct ucsi_connector*,struct ucsi_control*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(const struct typec_capability *cap, enum typec_role role)
{
	struct ucsi_connector *con = FUNC4(cap);
	struct ucsi_control ctrl;
	int ret = 0;

	FUNC2(&con->lock);

	if (!con->partner) {
		ret = -ENOTCONN;
		goto out_unlock;
	}

	if (con->status.pwr_dir == role)
		goto out_unlock;

	FUNC0(ctrl, con, role);
	ret = FUNC6(con, &ctrl);
	if (ret < 0)
		goto out_unlock;

	if (!FUNC7(&con->complete,
				FUNC1(UCSI_SWAP_TIMEOUT_MS))) {
		ret = -ETIMEDOUT;
		goto out_unlock;
	}

	/* Something has gone wrong while swapping the role */
	if (con->status.pwr_op_mode != UCSI_CONSTAT_PWR_OPMODE_PD) {
		FUNC5(con, true);
		ret = -EPROTO;
	}

out_unlock:
	FUNC3(&con->lock);

	return ret;
}