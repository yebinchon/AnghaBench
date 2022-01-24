#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tp_led_table {scalar_t__ state; int /*<<< orphan*/  name; } ;
struct ibm_init_struct {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_6__ {int /*<<< orphan*/  brightness; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENODEV ; 
 int TPACPI_LED_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hkey_handle ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct tp_led_table* led_tables ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_2__* mute_led_cdev ; 
 TYPE_1__* tpacpi_pdev ; 

__attribute__((used)) static int FUNC5(struct ibm_init_struct *iibm)
{
	acpi_handle temp;
	int i, err;

	for (i = 0; i < TPACPI_LED_MAX; i++) {
		struct tp_led_table *t = &led_tables[i];
		if (FUNC0(FUNC1(hkey_handle, t->name, &temp))) {
			t->state = -ENODEV;
			continue;
		}

		mute_led_cdev[i].brightness = FUNC4(i);
		err = FUNC2(&tpacpi_pdev->dev, &mute_led_cdev[i]);
		if (err < 0) {
			while (i--) {
				if (led_tables[i].state >= 0)
					FUNC3(&mute_led_cdev[i]);
			}
			return err;
		}
	}
	return 0;
}