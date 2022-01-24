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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct pm8001_hba_info {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  GSM_SM_BASE ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ PM8001_MAX_INB_NUM ; 
 scalar_t__ PM8001_MAX_OUTB_NUM ; 
 int FUNC2 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_hba_info*) ; 
 scalar_t__ FUNC5 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct pm8001_hba_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pm8001_hba_info*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct pm8001_hba_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct pm8001_hba_info*,scalar_t__) ; 

__attribute__((used)) static int FUNC19(struct pm8001_hba_info *pm8001_ha)
{
	u8 i = 0;
	u16 deviceid;
	FUNC8(pm8001_ha->pdev, PCI_DEVICE_ID, &deviceid);
	/* 8081 controllers need BAR shift to access MPI space
	* as this is shared with BIOS data */
	if (deviceid == 0x8081 || deviceid == 0x0042) {
		if (-1 == FUNC9(pm8001_ha, GSM_SM_BASE)) {
			FUNC0(pm8001_ha,
				FUNC11("Shift Bar4 to 0x%x failed\n",
					GSM_SM_BASE));
			return -1;
		}
	}
	/* check the firmware status */
	if (-1 == FUNC2(pm8001_ha)) {
		FUNC0(pm8001_ha,
			FUNC11("Firmware is not ready!\n"));
		return -EBUSY;
	}

	/* Initialize pci space address eg: mpi offset */
	FUNC4(pm8001_ha);
	FUNC3(pm8001_ha);
	FUNC14(pm8001_ha);
	FUNC12(pm8001_ha);
	FUNC13(pm8001_ha);
	FUNC15(pm8001_ha);
	/* update main config table ,inbound table and outbound table */
	FUNC17(pm8001_ha);
	for (i = 0; i < PM8001_MAX_INB_NUM; i++)
		FUNC16(pm8001_ha, i);
	for (i = 0; i < PM8001_MAX_OUTB_NUM; i++)
		FUNC18(pm8001_ha, i);
	/* 8081 controller donot require these operations */
	if (deviceid != 0x8081 && deviceid != 0x0042) {
		FUNC7(pm8001_ha, 0);
		/* 7->130ms, 34->500ms, 119->1.5s */
		FUNC6(pm8001_ha, 119);
	}
	/* notify firmware update finished and check initialization status */
	if (0 == FUNC5(pm8001_ha)) {
		FUNC1(pm8001_ha,
			FUNC11("MPI initialize successful!\n"));
	} else
		return -EBUSY;
	/*This register is a 16-bit timer with a resolution of 1us. This is the
	timer used for interrupt delay/coalescing in the PCIe Application Layer.
	Zero is not a valid value. A value of 1 in the register will cause the
	interrupts to be normal. A value greater than 1 will cause coalescing
	delays.*/
	FUNC10(pm8001_ha, 1, 0x0033c0, 0x1);
	FUNC10(pm8001_ha, 1, 0x0033c4, 0x0);
	return 0;
}