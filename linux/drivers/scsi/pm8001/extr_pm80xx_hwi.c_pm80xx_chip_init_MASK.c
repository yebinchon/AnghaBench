#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_4__ {int status; } ;
struct pm8001_hba_info {int controller_fatal_error; TYPE_2__ encrypt_info; TYPE_1__* chip; } ;
struct TYPE_3__ {scalar_t__ encrypt; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ PM8001_MAX_SPCV_INB_NUM ; 
 scalar_t__ PM8001_MAX_SPCV_OUTB_NUM ; 
 int FUNC2 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_hba_info*) ; 
 scalar_t__ FUNC5 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct pm8001_hba_info*) ; 
 int FUNC8 (struct pm8001_hba_info*) ; 
 int FUNC9 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct pm8001_hba_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct pm8001_hba_info*,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct pm8001_hba_info *pm8001_ha)
{
	int ret;
	u8 i = 0;

	/* check the firmware status */
	if (-1 == FUNC2(pm8001_ha)) {
		FUNC0(pm8001_ha,
			FUNC6("Firmware is not ready!\n"));
		return -EBUSY;
	}

	/* Initialize the controller fatal error flag */
	pm8001_ha->controller_fatal_error = false;

	/* Initialize pci space address eg: mpi offset */
	FUNC4(pm8001_ha);
	FUNC3(pm8001_ha);
	FUNC12(pm8001_ha);
	FUNC10(pm8001_ha);
	FUNC11(pm8001_ha);
	FUNC13(pm8001_ha);
	FUNC14(pm8001_ha);

	/* update main config table ,inbound table and outbound table */
	FUNC16(pm8001_ha);
	for (i = 0; i < PM8001_MAX_SPCV_INB_NUM; i++)
		FUNC15(pm8001_ha, i);
	for (i = 0; i < PM8001_MAX_SPCV_OUTB_NUM; i++)
		FUNC17(pm8001_ha, i);

	/* notify firmware update finished and check initialization status */
	if (0 == FUNC5(pm8001_ha)) {
		FUNC1(pm8001_ha,
			FUNC6("MPI initialize successful!\n"));
	} else
		return -EBUSY;

	/* send SAS protocol timer configuration page to FW */
	ret = FUNC9(pm8001_ha);

	/* Check for encryption */
	if (pm8001_ha->chip->encrypt) {
		FUNC1(pm8001_ha,
			FUNC6("Checking for encryption\n"));
		ret = FUNC8(pm8001_ha);
		if (ret == -1) {
			FUNC1(pm8001_ha,
				FUNC6("Encryption error !!\n"));
			if (pm8001_ha->encrypt_info.status == 0x81) {
				FUNC1(pm8001_ha, FUNC6(
					"Encryption enabled with error."
					"Saving encryption key to flash\n"));
				FUNC7(pm8001_ha);
			}
		}
	}
	return 0;
}