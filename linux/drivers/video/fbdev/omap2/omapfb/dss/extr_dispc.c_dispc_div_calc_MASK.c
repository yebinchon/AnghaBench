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
typedef  scalar_t__ (* dispc_div_calc_func ) (int,int,unsigned long,unsigned long,void*) ;

/* Variables and functions */
 unsigned int CONFIG_FB_OMAP2_DSS_MIN_FCK_PER_PCK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FEAT_CORE_CLK_DIV ; 
 int /*<<< orphan*/  FEAT_PARAM_DSS_FCK ; 
 int /*<<< orphan*/  FEAT_PARAM_DSS_PCD ; 
 unsigned long ULONG_MAX ; 
 unsigned long FUNC1 () ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC6 (unsigned long,unsigned long) ; 

bool FUNC7(unsigned long dispc,
		unsigned long pck_min, unsigned long pck_max,
		dispc_div_calc_func func, void *data)
{
	int lckd, lckd_start, lckd_stop;
	int pckd, pckd_start, pckd_stop;
	unsigned long pck, lck;
	unsigned long lck_max;
	unsigned long pckd_hw_min, pckd_hw_max;
	unsigned min_fck_per_pck;
	unsigned long fck;

#ifdef CONFIG_FB_OMAP2_DSS_MIN_FCK_PER_PCK
	min_fck_per_pck = CONFIG_FB_OMAP2_DSS_MIN_FCK_PER_PCK;
#else
	min_fck_per_pck = 0;
#endif

	pckd_hw_min = FUNC3(FEAT_PARAM_DSS_PCD);
	pckd_hw_max = FUNC2(FEAT_PARAM_DSS_PCD);

	lck_max = FUNC2(FEAT_PARAM_DSS_FCK);

	pck_min = pck_min ? pck_min : 1;
	pck_max = pck_max ? pck_max : ULONG_MAX;

	lckd_start = FUNC5(FUNC0(dispc, lck_max), 1ul);
	lckd_stop = FUNC6(dispc / pck_min, 255ul);

	for (lckd = lckd_start; lckd <= lckd_stop; ++lckd) {
		lck = dispc / lckd;

		pckd_start = FUNC5(FUNC0(lck, pck_max), pckd_hw_min);
		pckd_stop = FUNC6(lck / pck_min, pckd_hw_max);

		for (pckd = pckd_start; pckd <= pckd_stop; ++pckd) {
			pck = lck / pckd;

			/*
			 * For OMAP2/3 the DISPC fclk is the same as LCD's logic
			 * clock, which means we're configuring DISPC fclk here
			 * also. Thus we need to use the calculated lck. For
			 * OMAP4+ the DISPC fclk is a separate clock.
			 */
			if (FUNC4(FEAT_CORE_CLK_DIV))
				fck = FUNC1();
			else
				fck = lck;

			if (fck < pck * min_fck_per_pck)
				continue;

			if (func(lckd, pckd, lck, pck, data))
				return true;
		}
	}

	return false;
}