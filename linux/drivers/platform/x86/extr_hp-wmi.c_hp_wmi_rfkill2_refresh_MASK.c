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
struct bios_rfkill2_state {int count; struct bios_rfkill2_device_state* device; } ;
struct bios_rfkill2_device_state {scalar_t__ rfkill_id; int /*<<< orphan*/  power; } ;
typedef  int /*<<< orphan*/  state ;
struct TYPE_2__ {int num; scalar_t__ id; int /*<<< orphan*/  rfkill; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPWMI_READ ; 
 int /*<<< orphan*/  HPWMI_WIRELESS2_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bios_rfkill2_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* rfkill2 ; 
 int rfkill2_count ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	struct bios_rfkill2_state state;
	int err, i;

	err = FUNC2(HPWMI_WIRELESS2_QUERY, HPWMI_READ, &state,
				   0, sizeof(state));
	if (err)
		return err;

	for (i = 0; i < rfkill2_count; i++) {
		int num = rfkill2[i].num;
		struct bios_rfkill2_device_state *devstate;
		devstate = &state.device[num];

		if (num >= state.count ||
		    devstate->rfkill_id != rfkill2[i].id) {
			FUNC3("power configuration of the wireless devices unexpectedly changed\n");
			continue;
		}

		FUNC4(rfkill2[i].rfkill,
				  FUNC1(devstate->power),
				  FUNC0(devstate->power));
	}

	return 0;
}