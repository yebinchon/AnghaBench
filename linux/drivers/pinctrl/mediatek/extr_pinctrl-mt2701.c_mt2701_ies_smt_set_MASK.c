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
struct regmap {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int PIN_CONFIG_INPUT_ENABLE ; 
 int PIN_CONFIG_INPUT_SCHMITT_ENABLE ; 
 int /*<<< orphan*/  mt2701_ies_set ; 
 int /*<<< orphan*/  mt2701_smt_set ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned char,int) ; 

__attribute__((used)) static int FUNC2(struct regmap *regmap, unsigned int pin,
		unsigned char align, int value, enum pin_config_param arg)
{
	if (arg == PIN_CONFIG_INPUT_ENABLE)
		return FUNC1(regmap, mt2701_ies_set,
			FUNC0(mt2701_ies_set), pin, align, value);
	else if (arg == PIN_CONFIG_INPUT_SCHMITT_ENABLE)
		return FUNC1(regmap, mt2701_smt_set,
			FUNC0(mt2701_smt_set), pin, align, value);
	return -EINVAL;
}