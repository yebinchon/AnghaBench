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
struct tb_switch {int dummy; } ;
struct tb_eeprom_ctl {int access_high; int access_low; } ;

/* Variables and functions */
 int FUNC0 (struct tb_switch*,struct tb_eeprom_ctl*) ; 
 int FUNC1 (struct tb_switch*,struct tb_eeprom_ctl*) ; 

__attribute__((used)) static int FUNC2(struct tb_switch *sw, bool enable)
{
	struct tb_eeprom_ctl ctl;
	int res = FUNC0(sw, &ctl);
	if (res)
		return res;
	if (enable) {
		ctl.access_high = 1;
		res = FUNC1(sw, &ctl);
		if (res)
			return res;
		ctl.access_low = 0;
		return FUNC1(sw, &ctl);
	} else {
		ctl.access_low = 1;
		res = FUNC1(sw, &ctl);
		if (res)
			return res;
		ctl.access_high = 0;
		return FUNC1(sw, &ctl);
	}
}