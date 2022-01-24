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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_4__ {int phys_addr; } ;
struct TYPE_3__ {int phys_addr; } ;
struct esas2r_adapter {int max_vdareq_size; int uncached_phys; int* outbound_copy; int last_write; int last_read; int list_size; int /*<<< orphan*/  flags2; int /*<<< orphan*/  flags; int /*<<< orphan*/ * uncached; TYPE_2__ outbound_list_md; TYPE_1__ inbound_list_md; int /*<<< orphan*/  build_sgl; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF2_VDA_POWER_DOWN ; 
 int /*<<< orphan*/  AF_CHPRST_DETECTED ; 
 int /*<<< orphan*/  AF_COMM_LIST_TOGGLE ; 
 int /*<<< orphan*/  AF_LEGACY_SGE_MODE ; 
 int DRBL_ENB_MASK ; 
 int DRBL_FORCE_INT ; 
 int DRBL_FW_VER_0 ; 
 int DRBL_FW_VER_1 ; 
 int DRBL_FW_VER_MSK ; 
 int DRBL_MSG_IFC_DOWN ; 
 int DRBL_MSG_IFC_INIT ; 
 int DRBL_POWER_DOWN ; 
 int ESAS2R_INT_DIS_MASK ; 
 int /*<<< orphan*/  MU_DOORBELL_IN ; 
 int /*<<< orphan*/  MU_DOORBELL_IN_ENB ; 
 int /*<<< orphan*/  MU_DOORBELL_OUT ; 
 int /*<<< orphan*/  MU_DOORBELL_OUT_ENB ; 
 int MU_ILC_DYNAMIC_SRC ; 
 int MU_ILC_ENABLE ; 
 int MU_ILC_ENTRY_4_DW ; 
 int MU_ILC_ENTRY_MASK ; 
 int MU_ILC_NUMBER_MASK ; 
 int MU_ILC_NUMBER_SHIFT ; 
 int MU_ILIC_DEST ; 
 int MU_ILIC_DEST_DDR ; 
 int MU_ILIC_LIST ; 
 int MU_ILIC_LIST_F0 ; 
 int MU_ILR_TOGGLE ; 
 int MU_ILW_TOGGLE ; 
 int /*<<< orphan*/  MU_INT_MASK_OUT ; 
 int /*<<< orphan*/  MU_IN_LIST_ADDR_HI ; 
 int /*<<< orphan*/  MU_IN_LIST_ADDR_LO ; 
 int /*<<< orphan*/  MU_IN_LIST_CONFIG ; 
 int /*<<< orphan*/  MU_IN_LIST_IFC_CONFIG ; 
 int /*<<< orphan*/  MU_IN_LIST_READ ; 
 int /*<<< orphan*/  MU_IN_LIST_WRITE ; 
 int MU_OLC_ENABLE ; 
 int MU_OLC_ENTRY_4_DW ; 
 int MU_OLC_ENTRY_MASK ; 
 int MU_OLC_NUMBER_MASK ; 
 int MU_OLC_NUMBER_SHIFT ; 
 int MU_OLC_TOGGLE ; 
 int MU_OLIC_LIST ; 
 int MU_OLIC_LIST_F0 ; 
 int MU_OLIC_SOURCE ; 
 int MU_OLIC_SOURCE_DDR ; 
 int MU_OLIS_MASK ; 
 int MU_OLW_TOGGLE ; 
 int /*<<< orphan*/  MU_OUT_LIST_ADDR_HI ; 
 int /*<<< orphan*/  MU_OUT_LIST_ADDR_LO ; 
 int /*<<< orphan*/  MU_OUT_LIST_CONFIG ; 
 int /*<<< orphan*/  MU_OUT_LIST_COPY ; 
 int /*<<< orphan*/  MU_OUT_LIST_COPY_PTR_HI ; 
 int /*<<< orphan*/  MU_OUT_LIST_COPY_PTR_LO ; 
 int /*<<< orphan*/  MU_OUT_LIST_IFC_CONFIG ; 
 int /*<<< orphan*/  MU_OUT_LIST_INT_MASK ; 
 int /*<<< orphan*/  MU_OUT_LIST_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  esas2r_build_sg_list_prd ; 
 int /*<<< orphan*/  esas2r_build_sg_list_sge ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct esas2r_adapter*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct esas2r_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (int) ; 

bool FUNC15(struct esas2r_adapter *a)
{
	u32 starttime;
	u32 doorbell;
	u64 ppaddr;
	u32 dw;

	/*
	 * if the chip reset detected flag is set, we can bypass a bunch of
	 * stuff.
	 */
	if (FUNC13(AF_CHPRST_DETECTED, &a->flags))
		goto skip_chip_reset;

	/*
	 * BEFORE WE DO ANYTHING, disable the chip interrupts!  the boot driver
	 * may have left them enabled or we may be recovering from a fault.
	 */
	FUNC7(a, MU_INT_MASK_OUT, ESAS2R_INT_DIS_MASK);
	FUNC2(a, MU_INT_MASK_OUT);

	/*
	 * wait for the firmware to become ready by forcing an interrupt and
	 * waiting for a response.
	 */
	starttime = FUNC8(jiffies);

	while (true) {
		FUNC3(a);
		doorbell = FUNC5(a, MU_DOORBELL_OUT);
		if (doorbell == 0xFFFFFFFF) {
			/*
			 * Give the firmware up to two seconds to enable
			 * register access after a reset.
			 */
			if ((FUNC8(jiffies) - starttime) > 2000)
				return FUNC6(a,
								"unable to access registers");
		} else if (doorbell & DRBL_FORCE_INT) {
			u32 ver = (doorbell & DRBL_FW_VER_MSK);

			/*
			 * This driver supports version 0 and version 1 of
			 * the API
			 */
			FUNC7(a, MU_DOORBELL_OUT,
						    doorbell);

			if (ver == DRBL_FW_VER_0) {
				FUNC12(AF_LEGACY_SGE_MODE, &a->flags);

				a->max_vdareq_size = 128;
				a->build_sgl = esas2r_build_sg_list_sge;
			} else if (ver == DRBL_FW_VER_1) {
				FUNC0(AF_LEGACY_SGE_MODE, &a->flags);

				a->max_vdareq_size = 1024;
				a->build_sgl = esas2r_build_sg_list_prd;
			} else {
				return FUNC6(a,
								"unknown firmware version");
			}
			break;
		}

		FUNC11(FUNC10(100));

		if ((FUNC8(jiffies) - starttime) > 180000) {
			FUNC4("FW ready TMO");
			FUNC1();

			return FUNC6(a,
							"firmware start has timed out");
		}
	}

	/* purge any asynchronous events since we will repost them later */
	FUNC7(a, MU_DOORBELL_IN, DRBL_MSG_IFC_DOWN);
	starttime = FUNC8(jiffies);

	while (true) {
		doorbell = FUNC5(a, MU_DOORBELL_OUT);
		if (doorbell & DRBL_MSG_IFC_DOWN) {
			FUNC7(a, MU_DOORBELL_OUT,
						    doorbell);
			break;
		}

		FUNC11(FUNC10(50));

		if ((FUNC8(jiffies) - starttime) > 3000) {
			FUNC4("timeout waiting for interface down");
			break;
		}
	}
skip_chip_reset:
	/*
	 * first things first, before we go changing any of these registers
	 * disable the communication lists.
	 */
	dw = FUNC5(a, MU_IN_LIST_CONFIG);
	dw &= ~MU_ILC_ENABLE;
	FUNC7(a, MU_IN_LIST_CONFIG, dw);
	dw = FUNC5(a, MU_OUT_LIST_CONFIG);
	dw &= ~MU_OLC_ENABLE;
	FUNC7(a, MU_OUT_LIST_CONFIG, dw);

	/* configure the communication list addresses */
	ppaddr = a->inbound_list_md.phys_addr;
	FUNC7(a, MU_IN_LIST_ADDR_LO,
				    FUNC9(ppaddr));
	FUNC7(a, MU_IN_LIST_ADDR_HI,
				    FUNC14(ppaddr));
	ppaddr = a->outbound_list_md.phys_addr;
	FUNC7(a, MU_OUT_LIST_ADDR_LO,
				    FUNC9(ppaddr));
	FUNC7(a, MU_OUT_LIST_ADDR_HI,
				    FUNC14(ppaddr));
	ppaddr = a->uncached_phys +
		 ((u8 *)a->outbound_copy - a->uncached);
	FUNC7(a, MU_OUT_LIST_COPY_PTR_LO,
				    FUNC9(ppaddr));
	FUNC7(a, MU_OUT_LIST_COPY_PTR_HI,
				    FUNC14(ppaddr));

	/* reset the read and write pointers */
	*a->outbound_copy =
		a->last_write =
			a->last_read = a->list_size - 1;
	FUNC12(AF_COMM_LIST_TOGGLE, &a->flags);
	FUNC7(a, MU_IN_LIST_WRITE, MU_ILW_TOGGLE |
				    a->last_write);
	FUNC7(a, MU_OUT_LIST_COPY, MU_OLC_TOGGLE |
				    a->last_write);
	FUNC7(a, MU_IN_LIST_READ, MU_ILR_TOGGLE |
				    a->last_write);
	FUNC7(a, MU_OUT_LIST_WRITE,
				    MU_OLW_TOGGLE | a->last_write);

	/* configure the interface select fields */
	dw = FUNC5(a, MU_IN_LIST_IFC_CONFIG);
	dw &= ~(MU_ILIC_LIST | MU_ILIC_DEST);
	FUNC7(a, MU_IN_LIST_IFC_CONFIG,
				    (dw | MU_ILIC_LIST_F0 | MU_ILIC_DEST_DDR));
	dw = FUNC5(a, MU_OUT_LIST_IFC_CONFIG);
	dw &= ~(MU_OLIC_LIST | MU_OLIC_SOURCE);
	FUNC7(a, MU_OUT_LIST_IFC_CONFIG,
				    (dw | MU_OLIC_LIST_F0 |
				     MU_OLIC_SOURCE_DDR));

	/* finish configuring the communication lists */
	dw = FUNC5(a, MU_IN_LIST_CONFIG);
	dw &= ~(MU_ILC_ENTRY_MASK | MU_ILC_NUMBER_MASK);
	dw |= MU_ILC_ENTRY_4_DW | MU_ILC_DYNAMIC_SRC
	      | (a->list_size << MU_ILC_NUMBER_SHIFT);
	FUNC7(a, MU_IN_LIST_CONFIG, dw);
	dw = FUNC5(a, MU_OUT_LIST_CONFIG);
	dw &= ~(MU_OLC_ENTRY_MASK | MU_OLC_NUMBER_MASK);
	dw |= MU_OLC_ENTRY_4_DW | (a->list_size << MU_OLC_NUMBER_SHIFT);
	FUNC7(a, MU_OUT_LIST_CONFIG, dw);

	/*
	 * notify the firmware that we're done setting up the communication
	 * list registers.  wait here until the firmware is done configuring
	 * its lists.  it will signal that it is done by enabling the lists.
	 */
	FUNC7(a, MU_DOORBELL_IN, DRBL_MSG_IFC_INIT);
	starttime = FUNC8(jiffies);

	while (true) {
		doorbell = FUNC5(a, MU_DOORBELL_OUT);
		if (doorbell & DRBL_MSG_IFC_INIT) {
			FUNC7(a, MU_DOORBELL_OUT,
						    doorbell);
			break;
		}

		FUNC11(FUNC10(100));

		if ((FUNC8(jiffies) - starttime) > 3000) {
			FUNC4(
				"timeout waiting for communication list init");
			FUNC1();
			return FUNC6(a,
							"timeout waiting for communication list init");
		}
	}

	/*
	 * flag whether the firmware supports the power down doorbell.  we
	 * determine this by reading the inbound doorbell enable mask.
	 */
	doorbell = FUNC5(a, MU_DOORBELL_IN_ENB);
	if (doorbell & DRBL_POWER_DOWN)
		FUNC12(AF2_VDA_POWER_DOWN, &a->flags2);
	else
		FUNC0(AF2_VDA_POWER_DOWN, &a->flags2);

	/*
	 * enable assertion of outbound queue and doorbell interrupts in the
	 * main interrupt cause register.
	 */
	FUNC7(a, MU_OUT_LIST_INT_MASK, MU_OLIS_MASK);
	FUNC7(a, MU_DOORBELL_OUT_ENB, DRBL_ENB_MASK);
	return true;
}