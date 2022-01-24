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
struct sstfb_par {int dummy; } ;
struct fb_info {struct sstfb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  DACREG_ICS_PLLDATA ; 
 int /*<<< orphan*/  DACREG_ICS_PLLRMA ; 
 int DACREG_ICS_PLL_CLK0_1_INI ; 
 int DACREG_ICS_PLL_CLK0_7_INI ; 
 int DACREG_ICS_PLL_CLK1_B_INI ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct fb_info *info)
{
	struct sstfb_par *par = info->par;
	int m_clk0_1, m_clk0_7, m_clk1_b;
	int n_clk0_1, n_clk0_7, n_clk1_b;
	int i;

	for (i = 0; i<5; i++ ) {
		FUNC2(DACREG_ICS_PLLRMA, 0x1);	/* f1 */
		m_clk0_1 = FUNC1(DACREG_ICS_PLLDATA);
		n_clk0_1 = FUNC1(DACREG_ICS_PLLDATA);
		FUNC2(DACREG_ICS_PLLRMA, 0x7);	/* f7 */
		m_clk0_7 = FUNC1(DACREG_ICS_PLLDATA);
		n_clk0_7 = FUNC1(DACREG_ICS_PLLDATA);
		FUNC2(DACREG_ICS_PLLRMA, 0xb);	/* fB */
		m_clk1_b= FUNC1(DACREG_ICS_PLLDATA);
		n_clk1_b= FUNC1(DACREG_ICS_PLLDATA);
		FUNC0("m_clk0_1: %#x, m_clk0_7: %#x, m_clk1_b: %#x\n",
			m_clk0_1, m_clk0_7, m_clk1_b);
		FUNC0("n_clk0_1: %#x, n_clk0_7: %#x, n_clk1_b: %#x\n",
			n_clk0_1, n_clk0_7, n_clk1_b);
		if ((   m_clk0_1 == DACREG_ICS_PLL_CLK0_1_INI)
		    && (m_clk0_7 == DACREG_ICS_PLL_CLK0_7_INI)
		    && (m_clk1_b == DACREG_ICS_PLL_CLK1_B_INI)) {
			return 1;
		}
	}
	return 0;
}