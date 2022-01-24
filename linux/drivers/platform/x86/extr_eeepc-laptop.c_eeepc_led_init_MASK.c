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
struct TYPE_4__ {char* name; int max_brightness; int /*<<< orphan*/  brightness_get; int /*<<< orphan*/  brightness_set; } ;
struct eeepc_laptop {int /*<<< orphan*/  led_workqueue; TYPE_2__ tpd_led; TYPE_1__* platform_device; int /*<<< orphan*/  tpd_led_work; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ASL_TPD ; 
 int /*<<< orphan*/  ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eeepc_laptop*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  tpd_led_get ; 
 int /*<<< orphan*/  tpd_led_set ; 
 int /*<<< orphan*/  tpd_led_update ; 

__attribute__((used)) static int FUNC5(struct eeepc_laptop *eeepc)
{
	int rv;

	if (FUNC3(eeepc, CM_ASL_TPD) == -ENODEV)
		return 0;

	eeepc->led_workqueue = FUNC1("led_workqueue");
	if (!eeepc->led_workqueue)
		return -ENOMEM;
	FUNC0(&eeepc->tpd_led_work, tpd_led_update);

	eeepc->tpd_led.name = "eeepc::touchpad";
	eeepc->tpd_led.brightness_set = tpd_led_set;
	if (FUNC3(eeepc, CM_ASL_TPD) >= 0) /* if method is available */
		eeepc->tpd_led.brightness_get = tpd_led_get;
	eeepc->tpd_led.max_brightness = 1;

	rv = FUNC4(&eeepc->platform_device->dev,
				   &eeepc->tpd_led);
	if (rv) {
		FUNC2(eeepc->led_workqueue);
		return rv;
	}

	return 0;
}