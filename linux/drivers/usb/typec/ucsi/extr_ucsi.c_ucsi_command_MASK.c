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
struct ucsi {int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  complete; TYPE_1__* ppm; } ;
struct TYPE_2__ {int (* cmd ) (TYPE_1__*,struct ucsi_control*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_PENDING ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  UCSI_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,struct ucsi_control*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucsi_control*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ucsi *ucsi, struct ucsi_control *ctrl)
{
	int ret;

	FUNC5(ctrl);

	FUNC3(COMMAND_PENDING, &ucsi->flags);

	ret = ucsi->ppm->cmd(ucsi->ppm, ctrl);
	if (ret)
		goto err_clear_flag;

	if (!FUNC6(&ucsi->complete,
					 FUNC2(UCSI_TIMEOUT_MS))) {
		FUNC1(ucsi->dev, "PPM NOT RESPONDING\n");
		ret = -ETIMEDOUT;
	}

err_clear_flag:
	FUNC0(COMMAND_PENDING, &ucsi->flags);

	return ret;
}