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
struct chp_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  standby; int /*<<< orphan*/  configured; int /*<<< orphan*/  recognized; } ;

/* Variables and functions */
 int CHP_STATUS_CONFIGURED ; 
 int CHP_STATUS_NOT_RECOGNIZED ; 
 int CHP_STATUS_RESERVED ; 
 int CHP_STATUS_STANDBY ; 
 TYPE_1__ chp_info ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct chp_id) ; 
 int /*<<< orphan*/  info_lock ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct chp_id chpid)
{
	int rc;
	int bit;

	rc = FUNC2();
	if (rc)
		return rc;

	bit = FUNC1(chpid);
	FUNC3(&info_lock);
	if (!FUNC0(chp_info.recognized, bit))
		rc = CHP_STATUS_NOT_RECOGNIZED;
	else if (FUNC0(chp_info.configured, bit))
		rc = CHP_STATUS_CONFIGURED;
	else if (FUNC0(chp_info.standby, bit))
		rc = CHP_STATUS_STANDBY;
	else
		rc = CHP_STATUS_RESERVED;
	FUNC4(&info_lock);

	return rc;
}