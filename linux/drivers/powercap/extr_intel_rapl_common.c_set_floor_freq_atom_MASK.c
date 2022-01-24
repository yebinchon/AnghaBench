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
typedef  int u32 ;
struct rapl_domain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  floor_freq_reg_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_MBI_UNIT_PMC ; 
 int /*<<< orphan*/  MBI_CR_READ ; 
 int /*<<< orphan*/  MBI_CR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* rapl_defaults ; 

__attribute__((used)) static void FUNC3(struct rapl_domain *rd, bool enable)
{
	static u32 power_ctrl_orig_val;
	u32 mdata;

	if (!rapl_defaults->floor_freq_reg_addr) {
		FUNC2("Invalid floor frequency config register\n");
		return;
	}

	if (!power_ctrl_orig_val)
		FUNC0(BT_MBI_UNIT_PMC, MBI_CR_READ,
			      rapl_defaults->floor_freq_reg_addr,
			      &power_ctrl_orig_val);
	mdata = power_ctrl_orig_val;
	if (enable) {
		mdata &= ~(0x7f << 8);
		mdata |= 1 << 8;
	}
	FUNC1(BT_MBI_UNIT_PMC, MBI_CR_WRITE,
		       rapl_defaults->floor_freq_reg_addr, mdata);
}