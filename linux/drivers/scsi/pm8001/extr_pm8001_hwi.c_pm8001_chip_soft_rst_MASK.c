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
 int /*<<< orphan*/  GPIO_ADDR_BASE ; 
 int /*<<< orphan*/  GPIO_GPIO_0_0UTPUT_CTL_OFFSET ; 
 int /*<<< orphan*/  GSM_ADDR_BASE ; 
 int /*<<< orphan*/  GSM_CONFIG_RESET ; 
 int GSM_CONFIG_RESET_VALUE ; 
 int /*<<< orphan*/  GSM_READ_ADDR_PARITY_CHECK ; 
 int /*<<< orphan*/  GSM_WRITE_ADDR_PARITY_CHECK ; 
 int /*<<< orphan*/  GSM_WRITE_DATA_PARITY_CHECK ; 
 int /*<<< orphan*/  MBIC_AAP1_ADDR_BASE ; 
 int /*<<< orphan*/  MBIC_IOP_ADDR_BASE ; 
 int /*<<< orphan*/  MBIC_NMI_ENABLE_VPE0_AAP1 ; 
 int /*<<< orphan*/  MBIC_NMI_ENABLE_VPE0_IOP ; 
 int /*<<< orphan*/  MSGU_HOST_SCRATCH_PAD_0 ; 
 int /*<<< orphan*/  MSGU_ODCR ; 
 int /*<<< orphan*/  MSGU_ODMR ; 
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_0 ; 
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_1 ; 
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_2 ; 
 int /*<<< orphan*/  MSGU_SCRATCH_PAD_3 ; 
 int ODCR_CLEAR_ALL ; 
 int ODMR_CLEAR_ALL ; 
 int /*<<< orphan*/  PCIE_ERROR_INTERRUPT ; 
 int /*<<< orphan*/  PCIE_ERROR_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  PCIE_EVENT_INTERRUPT ; 
 int /*<<< orphan*/  PCIE_EVENT_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int SCRATCH_PAD1_RST ; 
 int /*<<< orphan*/  SPC_REG_RESET ; 
 int SPC_REG_RESET_BDMA_CORE ; 
 int SPC_REG_RESET_OSSP ; 
 int SPC_REG_RESET_PCS_AAP1_SS ; 
 int SPC_REG_RESET_PCS_IOP_SS ; 
 int SPC_SOFT_RESET_SIGNATURE ; 
 int /*<<< orphan*/  SPC_TOP_LEVEL_ADDR_BASE ; 
 int FUNC2 (struct pm8001_hba_info*) ; 
 int FUNC3 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pm8001_hba_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pm8001_hba_info*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct pm8001_hba_info *pm8001_ha)
{
	u32	regVal, toggleVal;
	u32	max_wait_count;
	u32	regVal1, regVal2, regVal3;
	u32	signature = 0x252acbcd; /* for host scratch pad0 */
	unsigned long flags;

	/* step1: Check FW is ready for soft reset */
	if (FUNC7(pm8001_ha) != 0) {
		FUNC0(pm8001_ha, FUNC6("FW is not ready\n"));
		return -1;
	}

	/* step 2: clear NMI status register on AAP1 and IOP, write the same
	value to clear */
	/* map 0x60000 to BAR4(0x20), BAR2(win) */
	FUNC8(&pm8001_ha->lock, flags);
	if (-1 == FUNC3(pm8001_ha, MBIC_AAP1_ADDR_BASE)) {
		FUNC9(&pm8001_ha->lock, flags);
		FUNC0(pm8001_ha,
			FUNC6("Shift Bar4 to 0x%x failed\n",
			MBIC_AAP1_ADDR_BASE));
		return -1;
	}
	regVal = FUNC4(pm8001_ha, 2, MBIC_NMI_ENABLE_VPE0_IOP);
	FUNC1(pm8001_ha,
		FUNC6("MBIC - NMI Enable VPE0 (IOP)= 0x%x\n", regVal));
	FUNC5(pm8001_ha, 2, MBIC_NMI_ENABLE_VPE0_IOP, 0x0);
	/* map 0x70000 to BAR4(0x20), BAR2(win) */
	if (-1 == FUNC3(pm8001_ha, MBIC_IOP_ADDR_BASE)) {
		FUNC9(&pm8001_ha->lock, flags);
		FUNC0(pm8001_ha,
			FUNC6("Shift Bar4 to 0x%x failed\n",
			MBIC_IOP_ADDR_BASE));
		return -1;
	}
	regVal = FUNC4(pm8001_ha, 2, MBIC_NMI_ENABLE_VPE0_AAP1);
	FUNC1(pm8001_ha,
		FUNC6("MBIC - NMI Enable VPE0 (AAP1)= 0x%x\n", regVal));
	FUNC5(pm8001_ha, 2, MBIC_NMI_ENABLE_VPE0_AAP1, 0x0);

	regVal = FUNC4(pm8001_ha, 1, PCIE_EVENT_INTERRUPT_ENABLE);
	FUNC1(pm8001_ha,
		FUNC6("PCIE -Event Interrupt Enable = 0x%x\n", regVal));
	FUNC5(pm8001_ha, 1, PCIE_EVENT_INTERRUPT_ENABLE, 0x0);

	regVal = FUNC4(pm8001_ha, 1, PCIE_EVENT_INTERRUPT);
	FUNC1(pm8001_ha,
		FUNC6("PCIE - Event Interrupt  = 0x%x\n", regVal));
	FUNC5(pm8001_ha, 1, PCIE_EVENT_INTERRUPT, regVal);

	regVal = FUNC4(pm8001_ha, 1, PCIE_ERROR_INTERRUPT_ENABLE);
	FUNC1(pm8001_ha,
		FUNC6("PCIE -Error Interrupt Enable = 0x%x\n", regVal));
	FUNC5(pm8001_ha, 1, PCIE_ERROR_INTERRUPT_ENABLE, 0x0);

	regVal = FUNC4(pm8001_ha, 1, PCIE_ERROR_INTERRUPT);
	FUNC1(pm8001_ha,
		FUNC6("PCIE - Error Interrupt = 0x%x\n", regVal));
	FUNC5(pm8001_ha, 1, PCIE_ERROR_INTERRUPT, regVal);

	/* read the scratch pad 1 register bit 2 */
	regVal = FUNC4(pm8001_ha, 0, MSGU_SCRATCH_PAD_1)
		& SCRATCH_PAD1_RST;
	toggleVal = regVal ^ SCRATCH_PAD1_RST;

	/* set signature in host scratch pad0 register to tell SPC that the
	host performs the soft reset */
	FUNC5(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_0, signature);

	/* read required registers for confirmming */
	/* map 0x0700000 to BAR4(0x20), BAR2(win) */
	if (-1 == FUNC3(pm8001_ha, GSM_ADDR_BASE)) {
		FUNC9(&pm8001_ha->lock, flags);
		FUNC0(pm8001_ha,
			FUNC6("Shift Bar4 to 0x%x failed\n",
			GSM_ADDR_BASE));
		return -1;
	}
	FUNC1(pm8001_ha,
		FUNC6("GSM 0x0(0x00007b88)-GSM Configuration and"
		" Reset = 0x%x\n",
		FUNC4(pm8001_ha, 2, GSM_CONFIG_RESET)));

	/* step 3: host read GSM Configuration and Reset register */
	regVal = FUNC4(pm8001_ha, 2, GSM_CONFIG_RESET);
	/* Put those bits to low */
	/* GSM XCBI offset = 0x70 0000
	0x00 Bit 13 COM_SLV_SW_RSTB 1
	0x00 Bit 12 QSSP_SW_RSTB 1
	0x00 Bit 11 RAAE_SW_RSTB 1
	0x00 Bit 9 RB_1_SW_RSTB 1
	0x00 Bit 8 SM_SW_RSTB 1
	*/
	regVal &= ~(0x00003b00);
	/* host write GSM Configuration and Reset register */
	FUNC5(pm8001_ha, 2, GSM_CONFIG_RESET, regVal);
	FUNC1(pm8001_ha,
		FUNC6("GSM 0x0 (0x00007b88 ==> 0x00004088) - GSM "
		"Configuration and Reset is set to = 0x%x\n",
		FUNC4(pm8001_ha, 2, GSM_CONFIG_RESET)));

	/* step 4: */
	/* disable GSM - Read Address Parity Check */
	regVal1 = FUNC4(pm8001_ha, 2, GSM_READ_ADDR_PARITY_CHECK);
	FUNC1(pm8001_ha,
		FUNC6("GSM 0x700038 - Read Address Parity Check "
		"Enable = 0x%x\n", regVal1));
	FUNC5(pm8001_ha, 2, GSM_READ_ADDR_PARITY_CHECK, 0x0);
	FUNC1(pm8001_ha,
		FUNC6("GSM 0x700038 - Read Address Parity Check Enable"
		"is set to = 0x%x\n",
		FUNC4(pm8001_ha, 2, GSM_READ_ADDR_PARITY_CHECK)));

	/* disable GSM - Write Address Parity Check */
	regVal2 = FUNC4(pm8001_ha, 2, GSM_WRITE_ADDR_PARITY_CHECK);
	FUNC1(pm8001_ha,
		FUNC6("GSM 0x700040 - Write Address Parity Check"
		" Enable = 0x%x\n", regVal2));
	FUNC5(pm8001_ha, 2, GSM_WRITE_ADDR_PARITY_CHECK, 0x0);
	FUNC1(pm8001_ha,
		FUNC6("GSM 0x700040 - Write Address Parity Check "
		"Enable is set to = 0x%x\n",
		FUNC4(pm8001_ha, 2, GSM_WRITE_ADDR_PARITY_CHECK)));

	/* disable GSM - Write Data Parity Check */
	regVal3 = FUNC4(pm8001_ha, 2, GSM_WRITE_DATA_PARITY_CHECK);
	FUNC1(pm8001_ha,
		FUNC6("GSM 0x300048 - Write Data Parity Check"
		" Enable = 0x%x\n", regVal3));
	FUNC5(pm8001_ha, 2, GSM_WRITE_DATA_PARITY_CHECK, 0x0);
	FUNC1(pm8001_ha,
		FUNC6("GSM 0x300048 - Write Data Parity Check Enable"
		"is set to = 0x%x\n",
	FUNC4(pm8001_ha, 2, GSM_WRITE_DATA_PARITY_CHECK)));

	/* step 5: delay 10 usec */
	FUNC10(10);
	/* step 5-b: set GPIO-0 output control to tristate anyway */
	if (-1 == FUNC3(pm8001_ha, GPIO_ADDR_BASE)) {
		FUNC9(&pm8001_ha->lock, flags);
		FUNC1(pm8001_ha,
				FUNC6("Shift Bar4 to 0x%x failed\n",
				GPIO_ADDR_BASE));
		return -1;
	}
	regVal = FUNC4(pm8001_ha, 2, GPIO_GPIO_0_0UTPUT_CTL_OFFSET);
	FUNC1(pm8001_ha,
			FUNC6("GPIO Output Control Register:"
			" = 0x%x\n", regVal));
	/* set GPIO-0 output control to tri-state */
	regVal &= 0xFFFFFFFC;
	FUNC5(pm8001_ha, 2, GPIO_GPIO_0_0UTPUT_CTL_OFFSET, regVal);

	/* Step 6: Reset the IOP and AAP1 */
	/* map 0x00000 to BAR4(0x20), BAR2(win) */
	if (-1 == FUNC3(pm8001_ha, SPC_TOP_LEVEL_ADDR_BASE)) {
		FUNC9(&pm8001_ha->lock, flags);
		FUNC0(pm8001_ha,
			FUNC6("SPC Shift Bar4 to 0x%x failed\n",
			SPC_TOP_LEVEL_ADDR_BASE));
		return -1;
	}
	regVal = FUNC4(pm8001_ha, 2, SPC_REG_RESET);
	FUNC1(pm8001_ha,
		FUNC6("Top Register before resetting IOP/AAP1"
		":= 0x%x\n", regVal));
	regVal &= ~(SPC_REG_RESET_PCS_IOP_SS | SPC_REG_RESET_PCS_AAP1_SS);
	FUNC5(pm8001_ha, 2, SPC_REG_RESET, regVal);

	/* step 7: Reset the BDMA/OSSP */
	regVal = FUNC4(pm8001_ha, 2, SPC_REG_RESET);
	FUNC1(pm8001_ha,
		FUNC6("Top Register before resetting BDMA/OSSP"
		": = 0x%x\n", regVal));
	regVal &= ~(SPC_REG_RESET_BDMA_CORE | SPC_REG_RESET_OSSP);
	FUNC5(pm8001_ha, 2, SPC_REG_RESET, regVal);

	/* step 8: delay 10 usec */
	FUNC10(10);

	/* step 9: bring the BDMA and OSSP out of reset */
	regVal = FUNC4(pm8001_ha, 2, SPC_REG_RESET);
	FUNC1(pm8001_ha,
		FUNC6("Top Register before bringing up BDMA/OSSP"
		":= 0x%x\n", regVal));
	regVal |= (SPC_REG_RESET_BDMA_CORE | SPC_REG_RESET_OSSP);
	FUNC5(pm8001_ha, 2, SPC_REG_RESET, regVal);

	/* step 10: delay 10 usec */
	FUNC10(10);

	/* step 11: reads and sets the GSM Configuration and Reset Register */
	/* map 0x0700000 to BAR4(0x20), BAR2(win) */
	if (-1 == FUNC3(pm8001_ha, GSM_ADDR_BASE)) {
		FUNC9(&pm8001_ha->lock, flags);
		FUNC0(pm8001_ha,
			FUNC6("SPC Shift Bar4 to 0x%x failed\n",
			GSM_ADDR_BASE));
		return -1;
	}
	FUNC1(pm8001_ha,
		FUNC6("GSM 0x0 (0x00007b88)-GSM Configuration and "
		"Reset = 0x%x\n", FUNC4(pm8001_ha, 2, GSM_CONFIG_RESET)));
	regVal = FUNC4(pm8001_ha, 2, GSM_CONFIG_RESET);
	/* Put those bits to high */
	/* GSM XCBI offset = 0x70 0000
	0x00 Bit 13 COM_SLV_SW_RSTB 1
	0x00 Bit 12 QSSP_SW_RSTB 1
	0x00 Bit 11 RAAE_SW_RSTB 1
	0x00 Bit 9   RB_1_SW_RSTB 1
	0x00 Bit 8   SM_SW_RSTB 1
	*/
	regVal |= (GSM_CONFIG_RESET_VALUE);
	FUNC5(pm8001_ha, 2, GSM_CONFIG_RESET, regVal);
	FUNC1(pm8001_ha,
		FUNC6("GSM (0x00004088 ==> 0x00007b88) - GSM"
		" Configuration and Reset is set to = 0x%x\n",
		FUNC4(pm8001_ha, 2, GSM_CONFIG_RESET)));

	/* step 12: Restore GSM - Read Address Parity Check */
	regVal = FUNC4(pm8001_ha, 2, GSM_READ_ADDR_PARITY_CHECK);
	/* just for debugging */
	FUNC1(pm8001_ha,
		FUNC6("GSM 0x700038 - Read Address Parity Check Enable"
		" = 0x%x\n", regVal));
	FUNC5(pm8001_ha, 2, GSM_READ_ADDR_PARITY_CHECK, regVal1);
	FUNC1(pm8001_ha,
		FUNC6("GSM 0x700038 - Read Address Parity"
		" Check Enable is set to = 0x%x\n",
		FUNC4(pm8001_ha, 2, GSM_READ_ADDR_PARITY_CHECK)));
	/* Restore GSM - Write Address Parity Check */
	regVal = FUNC4(pm8001_ha, 2, GSM_WRITE_ADDR_PARITY_CHECK);
	FUNC5(pm8001_ha, 2, GSM_WRITE_ADDR_PARITY_CHECK, regVal2);
	FUNC1(pm8001_ha,
		FUNC6("GSM 0x700040 - Write Address Parity Check"
		" Enable is set to = 0x%x\n",
		FUNC4(pm8001_ha, 2, GSM_WRITE_ADDR_PARITY_CHECK)));
	/* Restore GSM - Write Data Parity Check */
	regVal = FUNC4(pm8001_ha, 2, GSM_WRITE_DATA_PARITY_CHECK);
	FUNC5(pm8001_ha, 2, GSM_WRITE_DATA_PARITY_CHECK, regVal3);
	FUNC1(pm8001_ha,
		FUNC6("GSM 0x700048 - Write Data Parity Check Enable"
		"is set to = 0x%x\n",
		FUNC4(pm8001_ha, 2, GSM_WRITE_DATA_PARITY_CHECK)));

	/* step 13: bring the IOP and AAP1 out of reset */
	/* map 0x00000 to BAR4(0x20), BAR2(win) */
	if (-1 == FUNC3(pm8001_ha, SPC_TOP_LEVEL_ADDR_BASE)) {
		FUNC9(&pm8001_ha->lock, flags);
		FUNC0(pm8001_ha,
			FUNC6("Shift Bar4 to 0x%x failed\n",
			SPC_TOP_LEVEL_ADDR_BASE));
		return -1;
	}
	regVal = FUNC4(pm8001_ha, 2, SPC_REG_RESET);
	regVal |= (SPC_REG_RESET_PCS_IOP_SS | SPC_REG_RESET_PCS_AAP1_SS);
	FUNC5(pm8001_ha, 2, SPC_REG_RESET, regVal);

	/* step 14: delay 10 usec - Normal Mode */
	FUNC10(10);
	/* check Soft Reset Normal mode or Soft Reset HDA mode */
	if (signature == SPC_SOFT_RESET_SIGNATURE) {
		/* step 15 (Normal Mode): wait until scratch pad1 register
		bit 2 toggled */
		max_wait_count = 2 * 1000 * 1000;/* 2 sec */
		do {
			FUNC10(1);
			regVal = FUNC4(pm8001_ha, 0, MSGU_SCRATCH_PAD_1) &
				SCRATCH_PAD1_RST;
		} while ((regVal != toggleVal) && (--max_wait_count));

		if (!max_wait_count) {
			regVal = FUNC4(pm8001_ha, 0,
				MSGU_SCRATCH_PAD_1);
			FUNC0(pm8001_ha,
				FUNC6("TIMEOUT : ToggleVal 0x%x,"
				"MSGU_SCRATCH_PAD1 = 0x%x\n",
				toggleVal, regVal));
			FUNC0(pm8001_ha,
				FUNC6("SCRATCH_PAD0 value = 0x%x\n",
				FUNC4(pm8001_ha, 0,
				MSGU_SCRATCH_PAD_0)));
			FUNC0(pm8001_ha,
				FUNC6("SCRATCH_PAD2 value = 0x%x\n",
				FUNC4(pm8001_ha, 0,
				MSGU_SCRATCH_PAD_2)));
			FUNC0(pm8001_ha,
				FUNC6("SCRATCH_PAD3 value = 0x%x\n",
				FUNC4(pm8001_ha, 0,
				MSGU_SCRATCH_PAD_3)));
			FUNC9(&pm8001_ha->lock, flags);
			return -1;
		}

		/* step 16 (Normal) - Clear ODMR and ODCR */
		FUNC5(pm8001_ha, 0, MSGU_ODCR, ODCR_CLEAR_ALL);
		FUNC5(pm8001_ha, 0, MSGU_ODMR, ODMR_CLEAR_ALL);

		/* step 17 (Normal Mode): wait for the FW and IOP to get
		ready - 1 sec timeout */
		/* Wait for the SPC Configuration Table to be ready */
		if (FUNC2(pm8001_ha) == -1) {
			regVal = FUNC4(pm8001_ha, 0, MSGU_SCRATCH_PAD_1);
			/* return error if MPI Configuration Table not ready */
			FUNC1(pm8001_ha,
				FUNC6("FW not ready SCRATCH_PAD1"
				" = 0x%x\n", regVal));
			regVal = FUNC4(pm8001_ha, 0, MSGU_SCRATCH_PAD_2);
			/* return error if MPI Configuration Table not ready */
			FUNC1(pm8001_ha,
				FUNC6("FW not ready SCRATCH_PAD2"
				" = 0x%x\n", regVal));
			FUNC1(pm8001_ha,
				FUNC6("SCRATCH_PAD0 value = 0x%x\n",
				FUNC4(pm8001_ha, 0,
				MSGU_SCRATCH_PAD_0)));
			FUNC1(pm8001_ha,
				FUNC6("SCRATCH_PAD3 value = 0x%x\n",
				FUNC4(pm8001_ha, 0,
				MSGU_SCRATCH_PAD_3)));
			FUNC9(&pm8001_ha->lock, flags);
			return -1;
		}
	}
	FUNC3(pm8001_ha, 0);
	FUNC9(&pm8001_ha->lock, flags);

	FUNC1(pm8001_ha,
		FUNC6("SPC soft reset Complete\n"));
	return 0;
}