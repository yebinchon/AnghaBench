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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  pm2xxx_i2c; } ;
struct pm2xxx_charger {int /*<<< orphan*/  dev; TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pm2xxx_charger *pm2, int reg, u8 *val)
{
	int ret;

	/* wake up the device */
	FUNC2(pm2->dev);

	ret = FUNC1(pm2->config.pm2xxx_i2c, reg,
				1, val);
	if (ret < 0)
		FUNC0(pm2->dev, "Error reading register at 0x%x\n", reg);
	else
		ret = 0;

	FUNC3(pm2->dev);

	return ret;
}