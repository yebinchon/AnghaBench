#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int charger_type; } ;
struct abx500_chargalg {int /*<<< orphan*/  dev; TYPE_1__ chg_info; } ;

/* Variables and functions */
#define  AC_CHG 129 
#define  USB_CHG 128 
 int /*<<< orphan*/  FUNC0 (struct abx500_chargalg*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct abx500_chargalg*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct abx500_chargalg *di,
	int vset, int iset)
{
	switch (di->chg_info.charger_type) {
	case AC_CHG:
		FUNC2(di->dev,
			"AC parameters: Vset %d, Ich %d\n", vset, iset);
		FUNC1(di, false, 0, 0);
		FUNC0(di, true, vset, iset);
		break;

	case USB_CHG:
		FUNC2(di->dev,
			"USB parameters: Vset %d, Ich %d\n", vset, iset);
		FUNC0(di, false, 0, 0);
		FUNC1(di, true, vset, iset);
		break;

	default:
		FUNC3(di->dev, "Unknown charger to charge from\n");
		break;
	}
}