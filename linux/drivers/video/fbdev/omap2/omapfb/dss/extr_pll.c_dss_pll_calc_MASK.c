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
struct dss_pll_hw {unsigned long clkdco_max; unsigned long fint_min; unsigned long fint_max; int /*<<< orphan*/  m_max; int /*<<< orphan*/  n_max; } ;
struct dss_pll {struct dss_pll_hw* hw; } ;
typedef  scalar_t__ (* dss_pll_calc_func ) (int,int,unsigned long,unsigned long,void*) ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 unsigned long ULONG_MAX ; 
 int FUNC1 (unsigned long,unsigned long) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

bool FUNC4(const struct dss_pll *pll, unsigned long clkin,
		unsigned long pll_min, unsigned long pll_max,
		dss_pll_calc_func func, void *data)
{
	const struct dss_pll_hw *hw = pll->hw;
	int n, n_start, n_stop;
	int m, m_start, m_stop;
	unsigned long fint, clkdco;
	unsigned long pll_hw_max;
	unsigned long fint_hw_min, fint_hw_max;

	pll_hw_max = hw->clkdco_max;

	fint_hw_min = hw->fint_min;
	fint_hw_max = hw->fint_max;

	n_start = FUNC1(FUNC0(clkin, fint_hw_max), 1ul);
	n_stop = FUNC2((unsigned)(clkin / fint_hw_min), hw->n_max);

	pll_max = pll_max ? pll_max : ULONG_MAX;

	for (n = n_start; n <= n_stop; ++n) {
		fint = clkin / n;

		m_start = FUNC1(FUNC0(FUNC0(pll_min, fint), 2),
				1ul);
		m_stop = FUNC3((unsigned)(pll_max / fint / 2),
				(unsigned)(pll_hw_max / fint / 2),
				hw->m_max);

		for (m = m_start; m <= m_stop; ++m) {
			clkdco = 2 * m * fint;

			if (func(n, m, fint, clkdco, data))
				return true;
		}
	}

	return false;
}