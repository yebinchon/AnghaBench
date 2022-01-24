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
struct pm8001_hba_info {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_0 ; 
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_1 ; 
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_2 ; 
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_3 ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int RB6_ACCESS_REG ; 
 int /*<<< orphan*/  RB6_MAGIC_NUMBER_RST ; 
 int SCRATCH_PAD2_FWRDY_RST ; 
 int /*<<< orphan*/  SPC_RB6_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct pm8001_hba_info*) ; 
 int FUNC4 (struct pm8001_hba_info*,int) ; 
 int FUNC5 (struct pm8001_hba_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pm8001_hba_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC10(struct pm8001_hba_info *pm8001_ha)
{
	u32 regVal, regVal1, regVal2;
	if (FUNC3(pm8001_ha) != 0) {
		FUNC0(pm8001_ha,
			FUNC7("MPI state is not ready\n"));
		return -1;
	}
	/* read the scratch pad 2 register bit 2 */
	regVal = FUNC5(pm8001_ha, 0, MSGU_SCRATCH_PAD_2)
		& SCRATCH_PAD2_FWRDY_RST;
	if (regVal == SCRATCH_PAD2_FWRDY_RST) {
		FUNC1(pm8001_ha,
			FUNC7("Firmware is ready for reset .\n"));
	} else {
		unsigned long flags;
		/* Trigger NMI twice via RB6 */
		FUNC8(&pm8001_ha->lock, flags);
		if (-1 == FUNC4(pm8001_ha, RB6_ACCESS_REG)) {
			FUNC9(&pm8001_ha->lock, flags);
			FUNC0(pm8001_ha,
				FUNC7("Shift Bar4 to 0x%x failed\n",
					RB6_ACCESS_REG));
			return -1;
		}
		FUNC6(pm8001_ha, 2, SPC_RB6_OFFSET,
			RB6_MAGIC_NUMBER_RST);
		FUNC6(pm8001_ha, 2, SPC_RB6_OFFSET, RB6_MAGIC_NUMBER_RST);
		/* wait for 100 ms */
		FUNC2(100);
		regVal = FUNC5(pm8001_ha, 0, MSGU_SCRATCH_PAD_2) &
			SCRATCH_PAD2_FWRDY_RST;
		if (regVal != SCRATCH_PAD2_FWRDY_RST) {
			regVal1 = FUNC5(pm8001_ha, 0, MSGU_SCRATCH_PAD_1);
			regVal2 = FUNC5(pm8001_ha, 0, MSGU_SCRATCH_PAD_2);
			FUNC0(pm8001_ha,
				FUNC7("TIMEOUT:MSGU_SCRATCH_PAD1"
				"=0x%x, MSGU_SCRATCH_PAD2=0x%x\n",
				regVal1, regVal2));
			FUNC0(pm8001_ha,
				FUNC7("SCRATCH_PAD0 value = 0x%x\n",
				FUNC5(pm8001_ha, 0, MSGU_SCRATCH_PAD_0)));
			FUNC0(pm8001_ha,
				FUNC7("SCRATCH_PAD3 value = 0x%x\n",
				FUNC5(pm8001_ha, 0, MSGU_SCRATCH_PAD_3)));
			FUNC9(&pm8001_ha->lock, flags);
			return -1;
		}
		FUNC9(&pm8001_ha->lock, flags);
	}
	return 0;
}