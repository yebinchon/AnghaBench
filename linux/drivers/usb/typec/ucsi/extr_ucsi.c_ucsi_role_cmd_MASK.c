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
struct ucsi_control {int dummy; } ;
struct ucsi_connector {TYPE_1__* ucsi; } ;
struct TYPE_3__ {int /*<<< orphan*/  ppm_lock; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ucsi_control,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UCSI_ENABLE_NTFY_ALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ucsi_connector*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,struct ucsi_control*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ucsi_connector *con, struct ucsi_control *ctrl)
{
	int ret;

	ret = FUNC5(con->ucsi, ctrl, NULL, 0);
	if (ret == -ETIMEDOUT) {
		struct ucsi_control c;

		/* PPM most likely stopped responding. Resetting everything. */
		FUNC1(&con->ucsi->ppm_lock);
		FUNC4(con->ucsi);
		FUNC2(&con->ucsi->ppm_lock);

		FUNC0(c, UCSI_ENABLE_NTFY_ALL);
		FUNC5(con->ucsi, &c, NULL, 0);

		FUNC3(con, true);
	}

	return ret;
}