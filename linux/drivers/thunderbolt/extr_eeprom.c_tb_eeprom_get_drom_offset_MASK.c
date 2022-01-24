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
typedef  int u16 ;
struct tb_switch {int /*<<< orphan*/  cap_plug_events; } ;
struct TYPE_2__ {scalar_t__ not_present; int /*<<< orphan*/  present; } ;
struct tb_cap_plug_events {int drom_offset; TYPE_1__ eeprom_ctl; } ;
typedef  int /*<<< orphan*/  cap ;

/* Variables and functions */
 int ENOSYS ; 
 int ENXIO ; 
 int /*<<< orphan*/  TB_CFG_SWITCH ; 
 int FUNC0 (struct tb_switch*,struct tb_cap_plug_events*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_switch*,char*,...) ; 

__attribute__((used)) static int FUNC2(struct tb_switch *sw, u16 *offset)
{
	struct tb_cap_plug_events cap;
	int res;
	if (!sw->cap_plug_events) {
		FUNC1(sw, "no TB_CAP_PLUG_EVENTS, cannot read eeprom\n");
		return -ENOSYS;
	}
	res = FUNC0(sw, &cap, TB_CFG_SWITCH, sw->cap_plug_events,
			     sizeof(cap) / 4);
	if (res)
		return res;

	if (!cap.eeprom_ctl.present || cap.eeprom_ctl.not_present) {
		FUNC1(sw, "no NVM\n");
		return -ENOSYS;
	}

	if (cap.drom_offset > 0xffff) {
		FUNC1(sw, "drom offset is larger than 0xffff: %#x\n",
				cap.drom_offset);
		return -ENXIO;
	}
	*offset = cap.drom_offset;
	return 0;
}