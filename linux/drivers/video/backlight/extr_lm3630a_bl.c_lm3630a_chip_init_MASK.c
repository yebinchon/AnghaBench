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
struct lm3630a_platform_data {int pwm_ctrl; int leda_ctrl; int ledb_ctrl; int leda_init_brt; int ledb_init_brt; } ;
struct lm3630a_chip {int /*<<< orphan*/  dev; struct lm3630a_platform_data* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_BOOST ; 
 int /*<<< orphan*/  REG_BRT_A ; 
 int /*<<< orphan*/  REG_BRT_B ; 
 int /*<<< orphan*/  REG_CONFIG ; 
 int /*<<< orphan*/  REG_CTRL ; 
 int /*<<< orphan*/  REG_FILTER_STRENGTH ; 
 int /*<<< orphan*/  REG_I_A ; 
 int /*<<< orphan*/  REG_I_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct lm3630a_chip*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct lm3630a_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct lm3630a_chip *pchip)
{
	int rval;
	struct lm3630a_platform_data *pdata = pchip->pdata;

	FUNC3(1000, 2000);
	/* set Filter Strength Register */
	rval = FUNC2(pchip, REG_FILTER_STRENGTH, 0x03);
	/* set Cofig. register */
	rval |= FUNC1(pchip, REG_CONFIG, 0x07, pdata->pwm_ctrl);
	/* set boost control */
	rval |= FUNC2(pchip, REG_BOOST, 0x38);
	/* set current A */
	rval |= FUNC1(pchip, REG_I_A, 0x1F, 0x1F);
	/* set current B */
	rval |= FUNC2(pchip, REG_I_B, 0x1F);
	/* set control */
	rval |= FUNC1(pchip, REG_CTRL, 0x14, pdata->leda_ctrl);
	rval |= FUNC1(pchip, REG_CTRL, 0x0B, pdata->ledb_ctrl);
	FUNC3(1000, 2000);
	/* set brightness A and B */
	rval |= FUNC2(pchip, REG_BRT_A, pdata->leda_init_brt);
	rval |= FUNC2(pchip, REG_BRT_B, pdata->ledb_init_brt);

	if (rval < 0)
		FUNC0(pchip->dev, "i2c failed to access register\n");
	return rval;
}