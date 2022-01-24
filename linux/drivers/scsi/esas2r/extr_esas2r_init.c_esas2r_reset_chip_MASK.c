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
struct esas2r_adapter {TYPE_1__* pcid; int /*<<< orphan*/  flags2; int /*<<< orphan*/  fw_coredump_buff; } ;
struct TYPE_2__ {scalar_t__ revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF2_COREDUMP_AVAIL ; 
 int /*<<< orphan*/  AF2_COREDUMP_SAVED ; 
 int /*<<< orphan*/  ESAS2R_FWCOREDUMP_SZ ; 
 int /*<<< orphan*/  MU_CTL_IN_FULL_RST ; 
 int /*<<< orphan*/  MU_CTL_IN_FULL_RST2 ; 
 int /*<<< orphan*/  MU_CTL_STATUS_IN ; 
 int /*<<< orphan*/  MU_CTL_STATUS_IN_B2 ; 
 scalar_t__ MVR_FREY_B2 ; 
 scalar_t__ MW_DATA_ADDR_SRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct esas2r_adapter *a)
{
	if (!FUNC1(a))
		return;

	/*
	 * Before we reset the chip, save off the VDA core dump.  The VDA core
	 * dump is located in the upper 512KB of the onchip SRAM.  Make sure
	 * to not overwrite a previous crash that was saved.
	 */
	if (FUNC6(AF2_COREDUMP_AVAIL, &a->flags2) &&
	    !FUNC6(AF2_COREDUMP_SAVED, &a->flags2)) {
		FUNC2(a,
				      a->fw_coredump_buff,
				      MW_DATA_ADDR_SRAM + 0x80000,
				      ESAS2R_FWCOREDUMP_SZ);

		FUNC5(AF2_COREDUMP_SAVED, &a->flags2);
	}

	FUNC0(AF2_COREDUMP_AVAIL, &a->flags2);

	/* Reset the chip */
	if (a->pcid->revision == MVR_FREY_B2)
		FUNC3(a, MU_CTL_STATUS_IN_B2,
					    MU_CTL_IN_FULL_RST2);
	else
		FUNC3(a, MU_CTL_STATUS_IN,
					    MU_CTL_IN_FULL_RST);


	/* Stall a little while to let the reset condition clear */
	FUNC4(10);
}