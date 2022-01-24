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
struct smbb_charger_attr {unsigned int max; unsigned int min; unsigned int (* hw_fn ) (unsigned int) ;int /*<<< orphan*/  name; scalar_t__ reg; scalar_t__ safe_reg; } ;
struct smbb_charger {unsigned int* attr; int /*<<< orphan*/  dev; scalar_t__ addr; int /*<<< orphan*/  regmap; } ;
typedef  enum smbb_attr { ____Placeholder_smbb_attr } smbb_attr ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 struct smbb_charger_attr* smbb_charger_attrs ; 
 unsigned int FUNC5 (unsigned int,unsigned int (*) (unsigned int)) ; 
 unsigned int FUNC6 (unsigned int) ; 
 unsigned int FUNC7 (unsigned int) ; 

__attribute__((used)) static int FUNC8(struct smbb_charger *chg,
		enum smbb_attr which, unsigned int val)
{
	const struct smbb_charger_attr *prop;
	unsigned int wval;
	unsigned int out;
	int rc;

	prop = &smbb_charger_attrs[which];

	if (val > prop->max || val < prop->min) {
		FUNC1(chg->dev, "value out of range for %s [%u:%u]\n",
			prop->name, prop->min, prop->max);
		return -EINVAL;
	}

	if (prop->safe_reg) {
		rc = FUNC3(chg->regmap,
				chg->addr + prop->safe_reg, &wval);
		if (rc) {
			FUNC1(chg->dev,
				"unable to read safe value for '%s'\n",
				prop->name);
			return rc;
		}

		wval = prop->hw_fn(wval);

		if (val > wval) {
			FUNC2(chg->dev,
				"%s above safe value, clamping at %u\n",
				prop->name, wval);
			val = wval;
		}
	}

	wval = FUNC5(val, prop->hw_fn);

	rc = FUNC4(chg->regmap, chg->addr + prop->reg, wval);
	if (rc) {
		FUNC1(chg->dev, "unable to update %s", prop->name);
		return rc;
	}
	out = prop->hw_fn(wval);
	if (out != val) {
		FUNC2(chg->dev,
			"%s inaccurate, rounded to %u\n",
			prop->name, out);
	}

	FUNC0(chg->dev, "%s <= %d\n", prop->name, out);

	chg->attr[which] = out;

	return 0;
}