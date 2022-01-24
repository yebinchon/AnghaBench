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
typedef  scalar_t__ u32 ;
struct pm8001_hba_info {int dummy; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  MEMBASE_II_SHIFT_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pm8001_hba_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

int FUNC5(struct pm8001_hba_info *pm8001_ha, u32 shift_value)
{
	u32 reg_val;
	unsigned long start;
	FUNC2(pm8001_ha, 0, MEMBASE_II_SHIFT_REGISTER, shift_value);
	/* confirm the setting is written */
	start = jiffies + HZ; /* 1 sec */
	do {
		reg_val = FUNC1(pm8001_ha, 0, MEMBASE_II_SHIFT_REGISTER);
	} while ((reg_val != shift_value) && FUNC4(jiffies, start));
	if (reg_val != shift_value) {
		FUNC0(pm8001_ha,
			FUNC3("TIMEOUT:MEMBASE_II_SHIFT_REGISTER"
			" = 0x%x\n", reg_val));
		return -1;
	}
	return 0;
}