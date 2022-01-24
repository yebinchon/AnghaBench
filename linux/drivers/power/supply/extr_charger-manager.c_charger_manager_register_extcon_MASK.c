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
struct charger_regulator {int num_cables; int /*<<< orphan*/  regulator_name; struct charger_cable* cables; struct charger_manager* cm; int /*<<< orphan*/  consumer; } ;
struct charger_manager {int /*<<< orphan*/  dev; struct charger_desc* desc; } ;
struct charger_desc {int num_charger_regulators; struct charger_regulator* charger_regulators; } ;
struct charger_cable {struct charger_manager* cm; struct charger_regulator* charger; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct charger_manager*,struct charger_cable*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct charger_manager *cm)
{
	struct charger_desc *desc = cm->desc;
	struct charger_regulator *charger;
	int ret;
	int i;
	int j;

	for (i = 0; i < desc->num_charger_regulators; i++) {
		charger = &desc->charger_regulators[i];

		charger->consumer = FUNC4(cm->dev,
					charger->regulator_name);
		if (FUNC0(charger->consumer)) {
			FUNC3(cm->dev, "Cannot find charger(%s)\n",
				charger->regulator_name);
			return FUNC1(charger->consumer);
		}
		charger->cm = cm;

		for (j = 0; j < charger->num_cables; j++) {
			struct charger_cable *cable = &charger->cables[j];

			ret = FUNC2(cm, cable);
			if (ret < 0) {
				FUNC3(cm->dev, "Cannot initialize charger(%s)\n",
					charger->regulator_name);
				return ret;
			}
			cable->charger = charger;
			cable->cm = cm;
		}
	}

	return 0;
}