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
struct platform_device {int dummy; } ;
struct charger_regulator {int num_cables; int /*<<< orphan*/  consumer; struct charger_cable* cables; } ;
struct charger_manager {int /*<<< orphan*/  charger_psy; int /*<<< orphan*/  entry; struct charger_desc* desc; } ;
struct charger_desc {int num_charger_regulators; struct charger_regulator* charger_regulators; } ;
struct charger_cable {int /*<<< orphan*/  extcon_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cm_list_mtx ; 
 int /*<<< orphan*/  cm_monitor_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct charger_manager* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setup_polling ; 
 int /*<<< orphan*/  FUNC9 (struct charger_manager*,int) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct charger_manager *cm = FUNC6(pdev);
	struct charger_desc *desc = cm->desc;
	int i = 0;
	int j = 0;

	/* Remove from the list */
	FUNC4(&cm_list_mtx);
	FUNC3(&cm->entry);
	FUNC5(&cm_list_mtx);

	FUNC1(&setup_polling);
	FUNC0(&cm_monitor_work);

	for (i = 0 ; i < desc->num_charger_regulators ; i++) {
		struct charger_regulator *charger
				= &desc->charger_regulators[i];
		for (j = 0 ; j < charger->num_cables ; j++) {
			struct charger_cable *cable = &charger->cables[j];
			FUNC2(&cable->extcon_dev);
		}
	}

	for (i = 0 ; i < desc->num_charger_regulators ; i++)
		FUNC8(desc->charger_regulators[i].consumer);

	FUNC7(cm->charger_psy);

	FUNC9(cm, false);

	return 0;
}