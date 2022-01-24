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
struct TYPE_3__ {int /*<<< orphan*/  iop_base; } ;
typedef  int /*<<< orphan*/  PortAddr ;
typedef  TYPE_1__ ASC_DVC_VAR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int CC_CHIP_RESET ; 
 int CC_HALT ; 
 int CC_SCSI_RESET ; 
 int /*<<< orphan*/  CIW_CLR_SCSI_RESET_INT ; 
 int CSW_SCSI_RESET_ACTIVE ; 
 int /*<<< orphan*/  INS_HALT ; 
 int /*<<< orphan*/  INS_RFLAG_WTM ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static bool FUNC8(ASC_DVC_VAR *asc_dvc)
{
	PortAddr iop_base;
	int i = 10;

	iop_base = asc_dvc->iop_base;
	while ((FUNC0(iop_base) & CSW_SCSI_RESET_ACTIVE)
	       && (i-- > 0)) {
		FUNC6(100);
	}
	FUNC5(iop_base);
	FUNC2(iop_base, CC_CHIP_RESET | CC_SCSI_RESET | CC_HALT);
	FUNC7(60);
	FUNC3(iop_base, INS_RFLAG_WTM);
	FUNC3(iop_base, INS_HALT);
	FUNC2(iop_base, CC_CHIP_RESET | CC_HALT);
	FUNC2(iop_base, CC_HALT);
	FUNC6(200);
	FUNC4(iop_base, CIW_CLR_SCSI_RESET_INT);
	FUNC4(iop_base, 0);
	return (FUNC1(iop_base));
}