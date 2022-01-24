#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cmd; } ;
struct ucsi_control {TYPE_1__ cmd; scalar_t__ raw_cmd; } ;
struct ucsi {TYPE_4__* ppm; int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int (* cmd ) (TYPE_4__*,struct ucsi_control*) ;TYPE_3__* data; } ;
struct TYPE_7__ {scalar_t__ reset_complete; } ;
struct TYPE_8__ {scalar_t__ raw_cci; TYPE_2__ cci; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  UCSI_PPM_RESET ; 
 int /*<<< orphan*/  UCSI_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_4__*,struct ucsi_control*) ; 
 int FUNC4 (TYPE_4__*,struct ucsi_control*) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct ucsi_control*) ; 
 int /*<<< orphan*/  FUNC7 (struct ucsi_control*,int) ; 
 int FUNC8 (struct ucsi*) ; 

__attribute__((used)) static int FUNC9(struct ucsi *ucsi)
{
	struct ucsi_control ctrl;
	unsigned long tmo;
	int ret;

	ctrl.raw_cmd = 0;
	ctrl.cmd.cmd = UCSI_PPM_RESET;
	FUNC6(&ctrl);
	ret = ucsi->ppm->cmd(ucsi->ppm, &ctrl);
	if (ret)
		goto err;

	tmo = jiffies + FUNC1(UCSI_TIMEOUT_MS);

	do {
		/* Here sync is critical. */
		ret = FUNC8(ucsi);
		if (ret)
			goto err;

		if (ucsi->ppm->data->cci.reset_complete)
			break;

		/* If the PPM is still doing something else, reset it again. */
		if (ucsi->ppm->data->raw_cci) {
			FUNC0(ucsi->dev,
				"Failed to reset PPM! Trying again..\n");

			FUNC6(&ctrl);
			ret = ucsi->ppm->cmd(ucsi->ppm, &ctrl);
			if (ret)
				goto err;
		}

		/* Letting the PPM settle down. */
		FUNC2(20);

		ret = -ETIMEDOUT;
	} while (FUNC5(tmo));

err:
	FUNC7(&ctrl, ret);

	return ret;
}