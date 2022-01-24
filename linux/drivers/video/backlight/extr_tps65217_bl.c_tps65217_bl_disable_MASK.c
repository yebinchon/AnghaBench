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
struct tps65217_bl {int is_enabled; int /*<<< orphan*/  dev; int /*<<< orphan*/  tps; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPS65217_PROTECT_NONE ; 
 int /*<<< orphan*/  TPS65217_REG_WLEDCTRL1 ; 
 int /*<<< orphan*/  TPS65217_WLEDCTRL1_ISINK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tps65217_bl *tps65217_bl)
{
	int rc;

	rc = FUNC2(tps65217_bl->tps,
				TPS65217_REG_WLEDCTRL1,
				TPS65217_WLEDCTRL1_ISINK_ENABLE,
				TPS65217_PROTECT_NONE);
	if (rc) {
		FUNC1(tps65217_bl->dev,
			"failed to disable backlight: %d\n", rc);
		return rc;
	}

	tps65217_bl->is_enabled = false;

	FUNC0(tps65217_bl->dev, "backlight disabled\n");

	return 0;
}