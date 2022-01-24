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
union power_supply_propval {int intval; } ;
struct adp5061_state {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADP5061_CHG_CURR ; 
 unsigned int ADP5061_CHG_CURR_ICHG_MSK ; 
 int FUNC0 (int*) ; 
 int* adp5061_const_ichg ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct adp5061_state *st,
		union power_supply_propval *val)
{
	unsigned int regval;
	int ret;

	ret = FUNC1(st->regmap, ADP5061_CHG_CURR, &regval);
	if (ret < 0)
		return ret;

	regval = ((regval & ADP5061_CHG_CURR_ICHG_MSK) >> 2);
	if (regval >= FUNC0(adp5061_const_ichg))
		regval = FUNC0(adp5061_const_ichg) - 1;

	val->intval = adp5061_const_ichg[regval] * 1000;

	return ret;
}