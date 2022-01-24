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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct rio_dev {scalar_t__ em_efptr; } ;

/* Variables and functions */
 scalar_t__ IDT_ISLTL_ADDRESS_CAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int REM_LTL_ERR_IMPSPEC ; 
 int REM_PED_IMPL_SPEC ; 
 scalar_t__ RIO_EM_LTL_ERR_DETECT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct rio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rio_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct rio_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct rio_dev *rdev, u8 portnum)
{
	u32 regval, em_perrdet, em_ltlerrdet;

	FUNC4(rdev,
		rdev->em_efptr + RIO_EM_LTL_ERR_DETECT, &em_ltlerrdet);
	if (em_ltlerrdet) {
		/* Service Logical/Transport Layer Error(s) */
		if (em_ltlerrdet & REM_LTL_ERR_IMPSPEC) {
			/* Implementation specific error reported */
			FUNC4(rdev,
					IDT_ISLTL_ADDRESS_CAP, &regval);

			FUNC2("RIO: %s Implementation Specific LTL errors" \
				 " 0x%x @(0x%x)\n",
				 FUNC3(rdev), em_ltlerrdet, regval);

			/* Clear implementation specific address capture CSR */
			FUNC5(rdev, IDT_ISLTL_ADDRESS_CAP, 0);

		}
	}

	FUNC4(rdev,
		rdev->em_efptr + FUNC1(portnum), &em_perrdet);
	if (em_perrdet) {
		/* Service Port-Level Error(s) */
		if (em_perrdet & REM_PED_IMPL_SPEC) {
			/* Implementation Specific port error reported */

			/* Get IS errors reported */
			FUNC4(rdev,
					FUNC0(portnum), &regval);

			FUNC2("RIO: %s Implementation Specific Port" \
				 " errors 0x%x\n", FUNC3(rdev), regval);

			/* Clear all implementation specific events */
			FUNC5(rdev,
					FUNC0(portnum), 0);
		}
	}

	return 0;
}