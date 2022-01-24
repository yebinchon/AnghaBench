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
typedef  int u64 ;
typedef  unsigned long u32 ;
struct TYPE_2__ {int max_adj; } ;
struct ptp_qoriq {unsigned long tclk_period; int tmr_add; TYPE_1__ caps; scalar_t__ tmr_fiper2; scalar_t__ tmr_fiper1; int /*<<< orphan*/  tmr_prsc; int /*<<< orphan*/  cksel; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_CKSEL ; 
 scalar_t__ DEFAULT_FIPER1_PERIOD ; 
 scalar_t__ DEFAULT_FIPER2_PERIOD ; 
 int /*<<< orphan*/  DEFAULT_TMR_PRSC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 unsigned long FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int FUNC3 (int,unsigned long) ; 
 int FUNC4 (int,unsigned long,unsigned long*) ; 
 struct clk* FUNC5 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 unsigned long FUNC7 (unsigned long) ; 

__attribute__((used)) static int FUNC8(struct ptp_qoriq *ptp_qoriq,
				 struct device_node *node)
{
	struct clk *clk;
	u64 freq_comp;
	u64 max_adj;
	u32 nominal_freq;
	u32 remainder = 0;
	u32 clk_src = 0;

	ptp_qoriq->cksel = DEFAULT_CKSEL;

	clk = FUNC5(node, 0);
	if (!FUNC0(clk)) {
		clk_src = FUNC1(clk);
		FUNC2(clk);
	}

	if (clk_src <= 100000000UL) {
		FUNC6("error reference clock value, or lower than 100MHz\n");
		return -EINVAL;
	}

	nominal_freq = FUNC7(clk_src);
	if (!nominal_freq)
		return -EINVAL;

	ptp_qoriq->tclk_period = 1000000000UL / nominal_freq;
	ptp_qoriq->tmr_prsc = DEFAULT_TMR_PRSC;

	/* Calculate initial frequency compensation value for TMR_ADD register.
	 * freq_comp = ceil(2^32 / freq_ratio)
	 * freq_ratio = reference_clock_freq / nominal_freq
	 */
	freq_comp = ((u64)1 << 32) * nominal_freq;
	freq_comp = FUNC4(freq_comp, clk_src, &remainder);
	if (remainder)
		freq_comp++;

	ptp_qoriq->tmr_add = freq_comp;
	ptp_qoriq->tmr_fiper1 = DEFAULT_FIPER1_PERIOD - ptp_qoriq->tclk_period;
	ptp_qoriq->tmr_fiper2 = DEFAULT_FIPER2_PERIOD - ptp_qoriq->tclk_period;

	/* max_adj = 1000000000 * (freq_ratio - 1.0) - 1
	 * freq_ratio = reference_clock_freq / nominal_freq
	 */
	max_adj = 1000000000ULL * (clk_src - nominal_freq);
	max_adj = FUNC3(max_adj, nominal_freq) - 1;
	ptp_qoriq->caps.max_adj = max_adj;

	return 0;
}