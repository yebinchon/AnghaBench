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
typedef  int u32 ;
struct aty128fb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIOS_0_SCRATCH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(const struct aty128fb_par *par)
{
	u32 val;
	int flag = 0;

	val = FUNC0(BIOS_0_SCRATCH);

	FUNC1(BIOS_0_SCRATCH, 0x55555555);
	if (FUNC0(BIOS_0_SCRATCH) == 0x55555555) {
		FUNC1(BIOS_0_SCRATCH, 0xAAAAAAAA);

		if (FUNC0(BIOS_0_SCRATCH) == 0xAAAAAAAA)
			flag = 1; 
	}

	FUNC1(BIOS_0_SCRATCH, val);	// restore value
	return flag;
}