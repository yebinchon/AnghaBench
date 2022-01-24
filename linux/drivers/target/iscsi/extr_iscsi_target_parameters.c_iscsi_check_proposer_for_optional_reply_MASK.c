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
struct iscsi_param {int /*<<< orphan*/  name; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIRSTBURSTLENGTH ; 
 int /*<<< orphan*/  IMMEDIATEDATA ; 
 scalar_t__ FUNC0 (struct iscsi_param*) ; 
 scalar_t__ FUNC1 (struct iscsi_param*) ; 
 scalar_t__ FUNC2 (struct iscsi_param*) ; 
 scalar_t__ FUNC3 (struct iscsi_param*) ; 
 int /*<<< orphan*/  MAXCONNECTIONS ; 
 int /*<<< orphan*/  MAXRECVDATASEGMENTLENGTH ; 
 int /*<<< orphan*/  NO ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_param*) ; 
 int /*<<< orphan*/  YES ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct iscsi_param *param,
						    bool keys_workaround)
{
	if (FUNC1(param)) {
		if (!FUNC5(param->value, NO))
			FUNC4(param);
	} else if (FUNC2(param)) {
		if (!FUNC5(param->value, YES))
			FUNC4(param);

		if (keys_workaround) {
			/*
			 * Required for gPXE iSCSI boot client
			 */
			if (!FUNC5(param->name, IMMEDIATEDATA))
				FUNC4(param);
		}
	} else if (FUNC3(param)) {
		if (!FUNC5(param->name, MAXRECVDATASEGMENTLENGTH))
			FUNC4(param);

		if (keys_workaround) {
			/*
			 * Required for Mellanox Flexboot PXE boot ROM
			 */
			if (!FUNC5(param->name, FIRSTBURSTLENGTH))
				FUNC4(param);

			/*
			 * Required for gPXE iSCSI boot client
			 */
			if (!FUNC5(param->name, MAXCONNECTIONS))
				FUNC4(param);
		}
	} else if (FUNC0(param))
		FUNC4(param);
}