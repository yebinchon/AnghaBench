#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  conf; } ;
struct ucsi_dp {TYPE_2__* con; int /*<<< orphan*/  offset; int /*<<< orphan*/  override; TYPE_1__ data; } ;
struct ucsi_control {int /*<<< orphan*/  raw_cmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  ucsi; int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ucsi_control*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ucsi_dp *dp)
{
	u32 pins = FUNC0(dp->data.conf);
	struct ucsi_control ctrl;

	if (!dp->override)
		return 0;

	ctrl.raw_cmd = FUNC1(dp->con->num, 1, dp->offset, pins);

	return FUNC2(dp->con->ucsi, &ctrl, NULL, 0);
}