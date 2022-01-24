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
struct TYPE_2__ {scalar_t__ partner_type; } ;
struct ucsi_connector {int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; TYPE_1__ status; int /*<<< orphan*/  partner; } ;
struct typec_capability {int dummy; } ;
typedef  enum typec_data_role { ____Placeholder_typec_data_role } typec_data_role ;

/* Variables and functions */
 int ENOTCONN ; 
 int ETIMEDOUT ; 
 int TYPEC_DEVICE ; 
 int TYPEC_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct ucsi_control,struct ucsi_connector*,int) ; 
 scalar_t__ UCSI_CONSTAT_PARTNER_TYPE_DFP ; 
 scalar_t__ UCSI_CONSTAT_PARTNER_TYPE_UFP ; 
 int /*<<< orphan*/  UCSI_SWAP_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ucsi_connector* FUNC4 (struct typec_capability const*) ; 
 int FUNC5 (struct ucsi_connector*,struct ucsi_control*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(const struct typec_capability *cap, enum typec_data_role role)
{
	struct ucsi_connector *con = FUNC4(cap);
	struct ucsi_control ctrl;
	int ret = 0;

	FUNC2(&con->lock);

	if (!con->partner) {
		ret = -ENOTCONN;
		goto out_unlock;
	}

	if ((con->status.partner_type == UCSI_CONSTAT_PARTNER_TYPE_DFP &&
	     role == TYPEC_DEVICE) ||
	    (con->status.partner_type == UCSI_CONSTAT_PARTNER_TYPE_UFP &&
	     role == TYPEC_HOST))
		goto out_unlock;

	FUNC0(ctrl, con, role);
	ret = FUNC5(con, &ctrl);
	if (ret < 0)
		goto out_unlock;

	if (!FUNC6(&con->complete,
					FUNC1(UCSI_SWAP_TIMEOUT_MS)))
		ret = -ETIMEDOUT;

out_unlock:
	FUNC3(&con->lock);

	return ret < 0 ? ret : 0;
}