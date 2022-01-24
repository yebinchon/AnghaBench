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
struct TYPE_2__ {int s3entry_method; scalar_t__ aon_ctrl_base; scalar_t__ aon_sram; } ;

/* Variables and functions */
 scalar_t__ AON_CTRL_PM_CPU_WAIT_COUNT ; 
 scalar_t__ AON_REG_MAGIC_FLAGS ; 
 int /*<<< orphan*/  M1_PM_COLD_CONFIG ; 
 int /*<<< orphan*/  PM_COLD_CONFIG ; 
 int PWRDWN_SEQ_POWERDOWN_PLL ; 
 int /*<<< orphan*/  SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK ; 
 int SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ ctrl ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
	FUNC1();

	/* Clear magic S3 warm-boot value */
	FUNC5(0, ctrl.aon_sram + AON_REG_MAGIC_FLAGS);
	(void)FUNC3(ctrl.aon_sram + AON_REG_MAGIC_FLAGS);

	/* Skip wait-for-interrupt signal; just use a countdown */
	FUNC5(0x10, ctrl.aon_ctrl_base + AON_CTRL_PM_CPU_WAIT_COUNT);
	(void)FUNC3(ctrl.aon_ctrl_base + AON_CTRL_PM_CPU_WAIT_COUNT);

	if (ctrl.s3entry_method == 1) {
		FUNC4((PWRDWN_SEQ_POWERDOWN_PLL <<
			     SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT),
			     ~SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK);
		FUNC2(false);
		FUNC0(M1_PM_COLD_CONFIG, true);
		return; /* We should never actually get here */
	}

	FUNC0(PM_COLD_CONFIG, false);
}