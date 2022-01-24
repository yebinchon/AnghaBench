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
typedef  unsigned int u8 ;

/* Variables and functions */
 unsigned int PB_I2C_BWEN ; 
 int /*<<< orphan*/  TWL4030_PM_MASTER_PB_CFG ; 
 int /*<<< orphan*/  TWL4030_PM_MASTER_PB_WORD_LSB ; 
 int /*<<< orphan*/  TWL4030_PM_MASTER_PB_WORD_MSB ; 
 int /*<<< orphan*/  TWL_MODULE_PM_MASTER ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(unsigned msg)
{
	u8	val;
	int	ret;

	/* save powerbus configuration */
	ret = FUNC1(TWL_MODULE_PM_MASTER, &val,
			      TWL4030_PM_MASTER_PB_CFG);
	if (ret < 0)
		return ret;

	/* Enable i2c access to powerbus */
	ret = FUNC2(TWL_MODULE_PM_MASTER, val | PB_I2C_BWEN,
			       TWL4030_PM_MASTER_PB_CFG);
	if (ret < 0)
		return ret;

	ret = FUNC0();
	if (ret < 0)
		return ret;

	ret = FUNC2(TWL_MODULE_PM_MASTER, msg >> 8,
			       TWL4030_PM_MASTER_PB_WORD_MSB);
	if (ret < 0)
		return ret;

	ret = FUNC2(TWL_MODULE_PM_MASTER, msg & 0xff,
			       TWL4030_PM_MASTER_PB_WORD_LSB);
	if (ret < 0)
		return ret;

	ret = FUNC0();
	if (ret < 0)
		return ret;

	/* Restore powerbus configuration */
	return FUNC2(TWL_MODULE_PM_MASTER, val,
				TWL4030_PM_MASTER_PB_CFG);
}