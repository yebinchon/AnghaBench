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
struct pm860x_charger_info {scalar_t__ online; int /*<<< orphan*/  i2c; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC1_MODE_OFF ; 
 int CHARGE_THRESHOLD ; 
 int /*<<< orphan*/  PM8607_CHG_CTRL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pm860x_charger_info*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pm860x_charger_info *info, int vbatt)
{
	FUNC0(info->dev, "Stop charging!\n");
	FUNC1(info->i2c, PM8607_CHG_CTRL1, 3, CC1_MODE_OFF);
	if (vbatt > CHARGE_THRESHOLD && info->online)
		FUNC2(info, CHARGE_THRESHOLD, 0);
}