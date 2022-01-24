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
struct TYPE_2__ {int /*<<< orphan*/  var; } ;
struct pxafb_info {int lcd_supply_enabled; scalar_t__ lcd_supply; TYPE_1__ fb; int /*<<< orphan*/  (* lcd_power ) (int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct pxafb_info *fbi, int on)
{
	FUNC0("pxafb: LCD power o%s\n", on ? "n" : "ff");

	if (fbi->lcd_power)
		fbi->lcd_power(on, &fbi->fb.var);

	if (fbi->lcd_supply && fbi->lcd_supply_enabled != on) {
		int ret;

		if (on)
			ret = FUNC3(fbi->lcd_supply);
		else
			ret = FUNC2(fbi->lcd_supply);

		if (ret < 0)
			FUNC1("Unable to %s LCD supply regulator: %d\n",
				on ? "enable" : "disable", ret);
		else
			fbi->lcd_supply_enabled = on;
	}
}