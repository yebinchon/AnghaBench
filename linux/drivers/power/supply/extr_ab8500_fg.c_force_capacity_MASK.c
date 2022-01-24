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
struct TYPE_2__ {int user_mah; int max_mah_design; int mah; int /*<<< orphan*/  permille; } ;
struct ab8500_fg {TYPE_1__ bat_cap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ab8500_fg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ab8500_fg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ab8500_fg*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ab8500_fg*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static void FUNC5(struct ab8500_fg *di)
{
	int cap;

	FUNC1(di);
	cap = di->bat_cap.user_mah;
	if (cap > di->bat_cap.max_mah_design) {
		FUNC4(di->dev, "Remaining cap %d can't be bigger than total"
			" %d\n", cap, di->bat_cap.max_mah_design);
		cap = di->bat_cap.max_mah_design;
	}
	FUNC3(di, di->bat_cap.user_mah);
	di->bat_cap.permille = FUNC2(di, cap);
	di->bat_cap.mah = cap;
	FUNC0(di, true);
}