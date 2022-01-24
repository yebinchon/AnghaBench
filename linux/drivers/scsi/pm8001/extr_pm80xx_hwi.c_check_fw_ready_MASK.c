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
struct pm8001_hba_info {scalar_t__ chip_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_1 ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int SCRATCH_PAD_ILA_READY ; 
 int SCRATCH_PAD_IOP0_READY ; 
 int SCRATCH_PAD_IOP1_READY ; 
 int SCRATCH_PAD_RAAE_READY ; 
 scalar_t__ chip_8008 ; 
 scalar_t__ chip_8009 ; 
 int FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct pm8001_hba_info *pm8001_ha)
{
	u32 value;
	u32 max_wait_count;
	u32 max_wait_time;
	int ret = 0;

	/* reset / PCIe ready */
	max_wait_time = max_wait_count = 100 * 1000;	/* 100 milli sec */
	do {
		FUNC3(1);
		value = FUNC1(pm8001_ha, 0, MSGU_SCRATCH_PAD_1);
	} while ((value == 0xFFFFFFFF) && (--max_wait_count));

	/* check ila status */
	max_wait_time = max_wait_count = 1000 * 1000;	/* 1000 milli sec */
	do {
		FUNC3(1);
		value = FUNC1(pm8001_ha, 0, MSGU_SCRATCH_PAD_1);
	} while (((value & SCRATCH_PAD_ILA_READY) !=
			SCRATCH_PAD_ILA_READY) && (--max_wait_count));
	if (!max_wait_count)
		ret = -1;
	else {
		FUNC0(pm8001_ha,
			FUNC2(" ila ready status in %d millisec\n",
				(max_wait_time - max_wait_count)));
	}

	/* check RAAE status */
	max_wait_time = max_wait_count = 1800 * 1000;	/* 1800 milli sec */
	do {
		FUNC3(1);
		value = FUNC1(pm8001_ha, 0, MSGU_SCRATCH_PAD_1);
	} while (((value & SCRATCH_PAD_RAAE_READY) !=
				SCRATCH_PAD_RAAE_READY) && (--max_wait_count));
	if (!max_wait_count)
		ret = -1;
	else {
		FUNC0(pm8001_ha,
			FUNC2(" raae ready status in %d millisec\n",
					(max_wait_time - max_wait_count)));
	}

	/* check iop0 status */
	max_wait_time = max_wait_count = 600 * 1000;	/* 600 milli sec */
	do {
		FUNC3(1);
		value = FUNC1(pm8001_ha, 0, MSGU_SCRATCH_PAD_1);
	} while (((value & SCRATCH_PAD_IOP0_READY) != SCRATCH_PAD_IOP0_READY) &&
			(--max_wait_count));
	if (!max_wait_count)
		ret = -1;
	else {
		FUNC0(pm8001_ha,
			FUNC2(" iop0 ready status in %d millisec\n",
				(max_wait_time - max_wait_count)));
	}

	/* check iop1 status only for 16 port controllers */
	if ((pm8001_ha->chip_id != chip_8008) &&
			(pm8001_ha->chip_id != chip_8009)) {
		/* 200 milli sec */
		max_wait_time = max_wait_count = 200 * 1000;
		do {
			FUNC3(1);
			value = FUNC1(pm8001_ha, 0, MSGU_SCRATCH_PAD_1);
		} while (((value & SCRATCH_PAD_IOP1_READY) !=
				SCRATCH_PAD_IOP1_READY) && (--max_wait_count));
		if (!max_wait_count)
			ret = -1;
		else {
			FUNC0(pm8001_ha, FUNC2(
				"iop1 ready status in %d millisec\n",
				(max_wait_time - max_wait_count)));
		}
	}

	return ret;
}