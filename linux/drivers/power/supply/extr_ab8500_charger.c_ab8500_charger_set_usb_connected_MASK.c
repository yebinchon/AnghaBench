#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* psy; } ;
struct TYPE_7__ {int vbus_drop_end; } ;
struct TYPE_6__ {int charger_connected; } ;
struct ab8500_charger {int /*<<< orphan*/  charger_attached_mutex; int /*<<< orphan*/  usb_charger_attached_work; int /*<<< orphan*/  charger_wq; int /*<<< orphan*/  parent; TYPE_5__ usb_chg; TYPE_2__ flags; TYPE_1__ usb; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_9__ {TYPE_3__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC7(struct ab8500_charger *di,
	bool connected)
{
	if (connected != di->usb.charger_connected) {
		FUNC1(di->dev, "USB connected:%i\n", connected);
		di->usb.charger_connected = connected;

		if (!connected)
			di->flags.vbus_drop_end = false;

		FUNC6(&di->usb_chg.psy->dev.kobj, NULL, "present");

		if (connected) {
			FUNC3(&di->charger_attached_mutex);
			FUNC4(&di->charger_attached_mutex);

			if (FUNC2(di->parent))
				FUNC5(di->charger_wq,
					   &di->usb_charger_attached_work,
					   HZ);
		} else {
			FUNC0(&di->usb_charger_attached_work);
			FUNC3(&di->charger_attached_mutex);
			FUNC4(&di->charger_attached_mutex);
		}
	}
}