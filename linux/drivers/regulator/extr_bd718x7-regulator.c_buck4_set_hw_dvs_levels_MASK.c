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
struct regulator_desc {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  regmap; } ;
struct of_dvs_setting {char* prop; int /*<<< orphan*/  reg; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct of_dvs_setting const*) ; 
 int /*<<< orphan*/  BD71837_REG_BUCK4_VOLT_RUN ; 
 int FUNC1 (struct of_dvs_setting const*,struct device_node*,struct regulator_desc const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device_node *np,
			    const struct regulator_desc *desc,
			    struct regulator_config *cfg)
{
	int ret, i;
	const struct of_dvs_setting dvs[] = {
		{
			.prop = "rohm,dvs-run-voltage",
			.reg = BD71837_REG_BUCK4_VOLT_RUN,
		},
	};

	for (i = 0; i < FUNC0(dvs); i++) {
		ret = FUNC1(&dvs[i], np, desc, cfg->regmap);
		if (ret)
			break;
	}
	return ret;
}