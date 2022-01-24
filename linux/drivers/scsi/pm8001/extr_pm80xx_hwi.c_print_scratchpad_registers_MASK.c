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
struct pm8001_hba_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGU_HOST_SCRATCH_PAD_0 ; 
 int /*<<< orphan*/  MSGU_HOST_SCRATCH_PAD_1 ; 
 int /*<<< orphan*/  MSGU_HOST_SCRATCH_PAD_2 ; 
 int /*<<< orphan*/  MSGU_HOST_SCRATCH_PAD_3 ; 
 int /*<<< orphan*/  MSGU_HOST_SCRATCH_PAD_4 ; 
 int /*<<< orphan*/  MSGU_HOST_SCRATCH_PAD_5 ; 
 int /*<<< orphan*/  MSGU_HOST_SCRATCH_PAD_6 ; 
 int /*<<< orphan*/  MSGU_HOST_SCRATCH_PAD_7 ; 
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_0 ; 
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_1 ; 
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_2 ; 
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_3 ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pm8001_hba_info *pm8001_ha)
{
	FUNC0(pm8001_ha,
		FUNC2("MSGU_SCRATCH_PAD_0: 0x%x\n",
			FUNC1(pm8001_ha, 0, MSGU_SCRATCH_PAD_0)));
	FUNC0(pm8001_ha,
		FUNC2("MSGU_SCRATCH_PAD_1:0x%x\n",
			FUNC1(pm8001_ha, 0, MSGU_SCRATCH_PAD_1)));
	FUNC0(pm8001_ha,
		FUNC2("MSGU_SCRATCH_PAD_2: 0x%x\n",
			FUNC1(pm8001_ha, 0, MSGU_SCRATCH_PAD_2)));
	FUNC0(pm8001_ha,
		FUNC2("MSGU_SCRATCH_PAD_3: 0x%x\n",
			FUNC1(pm8001_ha, 0, MSGU_SCRATCH_PAD_3)));
	FUNC0(pm8001_ha,
		FUNC2("MSGU_HOST_SCRATCH_PAD_0: 0x%x\n",
			FUNC1(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_0)));
	FUNC0(pm8001_ha,
		FUNC2("MSGU_HOST_SCRATCH_PAD_1: 0x%x\n",
			FUNC1(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_1)));
	FUNC0(pm8001_ha,
		FUNC2("MSGU_HOST_SCRATCH_PAD_2: 0x%x\n",
			FUNC1(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_2)));
	FUNC0(pm8001_ha,
		FUNC2("MSGU_HOST_SCRATCH_PAD_3: 0x%x\n",
			FUNC1(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_3)));
	FUNC0(pm8001_ha,
		FUNC2("MSGU_HOST_SCRATCH_PAD_4: 0x%x\n",
			FUNC1(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_4)));
	FUNC0(pm8001_ha,
		FUNC2("MSGU_HOST_SCRATCH_PAD_5: 0x%x\n",
			FUNC1(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_5)));
	FUNC0(pm8001_ha,
		FUNC2("MSGU_RSVD_SCRATCH_PAD_0: 0x%x\n",
			FUNC1(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_6)));
	FUNC0(pm8001_ha,
		FUNC2("MSGU_RSVD_SCRATCH_PAD_1: 0x%x\n",
			FUNC1(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_7)));
}