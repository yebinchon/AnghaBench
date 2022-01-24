#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ushort ;
typedef  scalar_t__ uchar ;
struct TYPE_3__ {scalar_t__ max_total_qng; int /*<<< orphan*/  iop_base; } ;
typedef  int /*<<< orphan*/  PortAddr ;
typedef  TYPE_1__ ASC_DVC_VAR ;

/* Variables and functions */
 int ASCV_ASCDVC_ERR_CODE_W ; 
 int ASCV_BUSY_QHEAD_B ; 
 int ASCV_DISC1_QHEAD_B ; 
 int ASCV_HALTCODE_W ; 
 int ASCV_SCSIBUSY_B ; 
 int ASCV_STOP_CODE_B ; 
 scalar_t__ ASCV_TOTAL_READY_Q_B ; 
 int ASCV_WTM_FLAG_B ; 
 int ASC_QADR_BEG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(ASC_DVC_VAR *asc_dvc)
{
	PortAddr iop_base;
	int i;
	ushort lram_addr;

	iop_base = asc_dvc->iop_base;
	FUNC2(iop_base, 1);
	FUNC1(iop_base, asc_dvc->max_total_qng);
	FUNC4(iop_base, 1);
	FUNC3(iop_base, asc_dvc->max_total_qng);
	FUNC5(iop_base, ASCV_BUSY_QHEAD_B,
			 (uchar)((int)asc_dvc->max_total_qng + 1));
	FUNC5(iop_base, ASCV_DISC1_QHEAD_B,
			 (uchar)((int)asc_dvc->max_total_qng + 2));
	FUNC5(iop_base, (ushort)ASCV_TOTAL_READY_Q_B,
			 asc_dvc->max_total_qng);
	FUNC6(iop_base, ASCV_ASCDVC_ERR_CODE_W, 0);
	FUNC6(iop_base, ASCV_HALTCODE_W, 0);
	FUNC5(iop_base, ASCV_STOP_CODE_B, 0);
	FUNC5(iop_base, ASCV_SCSIBUSY_B, 0);
	FUNC5(iop_base, ASCV_WTM_FLAG_B, 0);
	FUNC0(iop_base, 0);
	lram_addr = ASC_QADR_BEG;
	for (i = 0; i < 32; i++, lram_addr += 2) {
		FUNC6(iop_base, lram_addr, 0);
	}
}