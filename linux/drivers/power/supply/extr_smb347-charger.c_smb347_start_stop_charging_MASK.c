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
struct smb347_charger {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct smb347_charger*) ; 
 int FUNC2 (struct smb347_charger*) ; 
 scalar_t__ FUNC3 (struct smb347_charger*) ; 

__attribute__((used)) static int FUNC4(struct smb347_charger *smb)
{
	int ret;

	/*
	 * Depending on whether valid power source is connected or not, we
	 * disable or enable the charging. We do it manually because it
	 * depends on how the platform has configured the valid inputs.
	 */
	if (FUNC3(smb)) {
		ret = FUNC2(smb);
		if (ret < 0)
			FUNC0(smb->dev, "failed to enable charging\n");
	} else {
		ret = FUNC1(smb);
		if (ret < 0)
			FUNC0(smb->dev, "failed to disable charging\n");
	}

	return ret;
}