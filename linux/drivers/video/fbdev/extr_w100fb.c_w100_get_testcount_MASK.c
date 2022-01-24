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
struct TYPE_2__ {int start_check_freq; unsigned int testclk_sel; int tstcount_rst; unsigned int test_count; } ;
union clk_test_cntl_u {TYPE_1__ f; scalar_t__ val; } ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ mmCLK_TEST_CNTL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ remapped_regs ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC3(unsigned int testclk_sel)
{
	union clk_test_cntl_u clk_test_cntl;

	FUNC1(5);

	/* Select the test clock source and reset */
	clk_test_cntl.f.start_check_freq = 0x0;
	clk_test_cntl.f.testclk_sel = testclk_sel;
	clk_test_cntl.f.tstcount_rst = 0x1; /* set reset */
	FUNC2((u32) (clk_test_cntl.val), remapped_regs + mmCLK_TEST_CNTL);

	clk_test_cntl.f.tstcount_rst = 0x0; /* clear reset */
	FUNC2((u32) (clk_test_cntl.val), remapped_regs + mmCLK_TEST_CNTL);

	/* Run clock test */
	clk_test_cntl.f.start_check_freq = 0x1;
	FUNC2((u32) (clk_test_cntl.val), remapped_regs + mmCLK_TEST_CNTL);

	/* Give the test time to complete */
	FUNC1(20);

	/* Return the result */
	clk_test_cntl.val = FUNC0(remapped_regs + mmCLK_TEST_CNTL);
	clk_test_cntl.f.start_check_freq = 0x0;
	FUNC2((u32) (clk_test_cntl.val), remapped_regs + mmCLK_TEST_CNTL);

	return clk_test_cntl.f.test_count;
}