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
struct pm8001_hba_info {int /*<<< orphan*/  general_stat_tbl_addr; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GST_GSTLEN_MPIS_OFFSET ; 
 int GST_MPI_STATE_MASK ; 
 int GST_MPI_STATE_UNINIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSGU_IBDB_SET ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int SPCv_MSGU_CFG_TABLE_RESET ; 
 int /*<<< orphan*/  FUNC2 (struct pm8001_hba_info*) ; 
 int FUNC3 (struct pm8001_hba_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_hba_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct pm8001_hba_info *pm8001_ha)
{
	u32 max_wait_count;
	u32 value;
	u32 gst_len_mpistate;
	FUNC2(pm8001_ha);
	/* Write bit1=1 to Inbound DoorBell Register to tell the SPC FW the
	table is stop */
	FUNC4(pm8001_ha, 0, MSGU_IBDB_SET, SPCv_MSGU_CFG_TABLE_RESET);

	/* wait until Inbound DoorBell Clear Register toggled */
	if (FUNC0(pm8001_ha->pdev)) {
		max_wait_count = 4 * 1000 * 1000;/* 4 sec */
	} else {
		max_wait_count = 2 * 1000 * 1000;/* 2 sec */
	}
	do {
		FUNC7(1);
		value = FUNC3(pm8001_ha, 0, MSGU_IBDB_SET);
		value &= SPCv_MSGU_CFG_TABLE_RESET;
	} while ((value != 0) && (--max_wait_count));

	if (!max_wait_count) {
		FUNC1(pm8001_ha,
			FUNC6("TIMEOUT:IBDB value/=%x\n", value));
		return -1;
	}

	/* check the MPI-State for termination in progress */
	/* wait until Inbound DoorBell Clear Register toggled */
	max_wait_count = 2 * 1000 * 1000;	/* 2 sec for spcv/ve */
	do {
		FUNC7(1);
		gst_len_mpistate =
			FUNC5(pm8001_ha->general_stat_tbl_addr,
			GST_GSTLEN_MPIS_OFFSET);
		if (GST_MPI_STATE_UNINIT ==
			(gst_len_mpistate & GST_MPI_STATE_MASK))
			break;
	} while (--max_wait_count);
	if (!max_wait_count) {
		FUNC1(pm8001_ha,
			FUNC6(" TIME OUT MPI State = 0x%x\n",
				gst_len_mpistate & GST_MPI_STATE_MASK));
		return -1;
	}

	return 0;
}