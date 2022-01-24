#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regulator_desc {int id; } ;
struct regulator_config {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {void* n_linear_ranges; void* linear_ranges; } ;
struct TYPE_4__ {int /*<<< orphan*/  decay_mask; int /*<<< orphan*/  decay_reg; TYPE_1__ desc; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
#define  BUCK1 133 
#define  BUCK2 132 
#define  BUCK3 131 
#define  BUCK4 130 
#define  BUCK5 129 
#define  BUCK6 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct device_node*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* regulators ; 
 void* tps65086_buck126_25mv_ranges ; 
 void* tps65086_buck345_25mv_ranges ; 

__attribute__((used)) static int FUNC5(struct device_node *node,
				const struct regulator_desc *desc,
				struct regulator_config *config)
{
	int ret;

	/* Check for 25mV step mode */
	if (FUNC3(node, "ti,regulator-step-size-25mv")) {
		switch (desc->id) {
		case BUCK1:
		case BUCK2:
		case BUCK6:
			regulators[desc->id].desc.linear_ranges =
				tps65086_buck126_25mv_ranges;
			regulators[desc->id].desc.n_linear_ranges =
				FUNC0(tps65086_buck126_25mv_ranges);
			break;
		case BUCK3:
		case BUCK4:
		case BUCK5:
			regulators[desc->id].desc.linear_ranges =
				tps65086_buck345_25mv_ranges;
			regulators[desc->id].desc.n_linear_ranges =
				FUNC0(tps65086_buck345_25mv_ranges);
			break;
		default:
			FUNC2(config->dev, "25mV step mode only valid for BUCK regulators\n");
		}
	}

	/* Check for decay mode */
	if (desc->id <= BUCK6 && FUNC3(node, "ti,regulator-decay")) {
		ret = FUNC4(config->regmap,
					regulators[desc->id].decay_reg,
					regulators[desc->id].decay_mask,
					regulators[desc->id].decay_mask);
		if (ret) {
			FUNC1(config->dev, "Error setting decay\n");
			return ret;
		}
	}

	return 0;
}