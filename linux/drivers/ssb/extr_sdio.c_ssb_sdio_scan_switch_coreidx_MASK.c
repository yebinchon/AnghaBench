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
typedef  scalar_t__ u32 ;
struct ssb_bus {int /*<<< orphan*/  host_sdio; } ;

/* Variables and functions */
 int SSB_CORE_SIZE ; 
 scalar_t__ SSB_ENUM_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_bus*) ; 
 int FUNC4 (struct ssb_bus*,scalar_t__) ; 

int FUNC5(struct ssb_bus *bus, u8 coreidx)
{
	u32 sbaddr;
	int error;

	sbaddr = (coreidx * SSB_CORE_SIZE) + SSB_ENUM_BASE;
	FUNC1(bus->host_sdio);
	error = FUNC4(bus, sbaddr);
	FUNC2(bus->host_sdio);
	if (error) {
		FUNC0(FUNC3(bus), "failed to switch to core %u,"
			" error %d\n", coreidx, error);
		goto out;
	}
out:
	return error;
}