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
typedef  int /*<<< orphan*/  ushort ;
struct TYPE_3__ {int /*<<< orphan*/  iop_base; } ;
typedef  int /*<<< orphan*/  PortAddr ;
typedef  TYPE_1__ ASC_DVC_VAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(ASC_DVC_VAR *asc_dvc)
{
	PortAddr iop_base;
	ushort q_addr;
	ushort saved_word;
	int sta;

	iop_base = asc_dvc->iop_base;
	sta = 0;
	q_addr = FUNC0(241);
	saved_word = FUNC2(iop_base, q_addr);
	FUNC3(iop_base, q_addr);
	FUNC4(iop_base, 0x55AA);
	FUNC6(10);
	FUNC3(iop_base, q_addr);
	if (FUNC1(iop_base) == 0x55AA) {
		sta = 1;
		FUNC5(iop_base, q_addr, saved_word);
	}
	return (sta);
}