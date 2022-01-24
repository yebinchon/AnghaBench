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
typedef  int u8 ;
typedef  int u32 ;
struct ssb_bus {int /*<<< orphan*/  host_pci; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SSB_BAR0_MAX_RETRIES ; 
 int /*<<< orphan*/  SSB_BAR0_WIN ; 
 int SSB_CORE_SIZE ; 
 int SSB_ENUM_BASE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct ssb_bus *bus, u8 coreidx)
{
	int err;
	int attempts = 0;
	u32 cur_core;

	while (1) {
		err = FUNC1(bus->host_pci, SSB_BAR0_WIN,
					     (coreidx * SSB_CORE_SIZE)
					     + SSB_ENUM_BASE);
		if (err)
			goto error;
		err = FUNC0(bus->host_pci, SSB_BAR0_WIN,
					    &cur_core);
		if (err)
			goto error;
		cur_core = (cur_core - SSB_ENUM_BASE)
			   / SSB_CORE_SIZE;
		if (cur_core == coreidx)
			break;

		if (attempts++ > SSB_BAR0_MAX_RETRIES)
			goto error;
		FUNC3(10);
	}
	return 0;
error:
	FUNC2("Failed to switch to core %u\n", coreidx);
	return -ENODEV;
}