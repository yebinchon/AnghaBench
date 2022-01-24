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
struct esas2r_adapter {scalar_t__ chip_init_time; int max_vdareq_size; int /*<<< orphan*/  build_sgl; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_CHPRST_DETECTED ; 
 int /*<<< orphan*/  AF_LEGACY_SGE_MODE ; 
 scalar_t__ DRBL_FORCE_INT ; 
 scalar_t__ DRBL_FW_VER_0 ; 
 scalar_t__ DRBL_FW_VER_1 ; 
 scalar_t__ DRBL_FW_VER_MSK ; 
 scalar_t__ ESAS2R_CHPRST_TIME ; 
 scalar_t__ ESAS2R_CHPRST_WAIT_TIME ; 
 int /*<<< orphan*/  MU_DOORBELL_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  esas2r_build_sg_list_prd ; 
 int /*<<< orphan*/  esas2r_build_sg_list_sge ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*) ; 
 scalar_t__ FUNC3 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct esas2r_adapter *a, u32 currtime)
{
	u32 delta = currtime - a->chip_init_time;

	if (delta <= ESAS2R_CHPRST_WAIT_TIME) {
		/* Wait before accessing registers */
	} else if (delta >= ESAS2R_CHPRST_TIME) {
		/*
		 * The last reset failed so try again. Reset
		 * processing will give up after three tries.
		 */
		FUNC2(a);
	} else {
		/* We can now see if the firmware is ready */
		u32 doorbell;

		doorbell = FUNC3(a, MU_DOORBELL_OUT);
		if (doorbell == 0xFFFFFFFF || !(doorbell & DRBL_FORCE_INT)) {
			FUNC1(a);
		} else {
			u32 ver = (doorbell & DRBL_FW_VER_MSK);

			/* Driver supports API version 0 and 1 */
			FUNC4(a, MU_DOORBELL_OUT,
						    doorbell);
			if (ver == DRBL_FW_VER_0) {
				FUNC5(AF_CHPRST_DETECTED, &a->flags);
				FUNC5(AF_LEGACY_SGE_MODE, &a->flags);

				a->max_vdareq_size = 128;
				a->build_sgl = esas2r_build_sg_list_sge;
			} else if (ver == DRBL_FW_VER_1) {
				FUNC5(AF_CHPRST_DETECTED, &a->flags);
				FUNC0(AF_LEGACY_SGE_MODE, &a->flags);

				a->max_vdareq_size = 1024;
				a->build_sgl = esas2r_build_sg_list_prd;
			} else {
				FUNC2(a);
			}
		}
	}
}