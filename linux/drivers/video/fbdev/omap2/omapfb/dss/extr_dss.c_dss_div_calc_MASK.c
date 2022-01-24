#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int (* dss_div_calc_func ) (unsigned long,void*) ;
struct TYPE_4__ {int /*<<< orphan*/ * parent_clk; TYPE_1__* feat; int /*<<< orphan*/  dss_clk; } ;
struct TYPE_3__ {unsigned long fck_div_max; unsigned int dss_fck_multiplier; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FEAT_PARAM_DSS_FCK ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 TYPE_2__ dss ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int,unsigned long) ; 
 int FUNC5 (unsigned long,unsigned long) ; 

bool FUNC6(unsigned long pck, unsigned long fck_min,
		dss_div_calc_func func, void *data)
{
	int fckd, fckd_start, fckd_stop;
	unsigned long fck;
	unsigned long fck_hw_max;
	unsigned long fckd_hw_max;
	unsigned long prate;
	unsigned m;

	fck_hw_max = FUNC3(FEAT_PARAM_DSS_FCK);

	if (dss.parent_clk == NULL) {
		unsigned pckd;

		pckd = fck_hw_max / pck;

		fck = pck * pckd;

		fck = FUNC2(dss.dss_clk, fck);

		return func(fck, data);
	}

	fckd_hw_max = dss.feat->fck_div_max;

	m = dss.feat->dss_fck_multiplier;
	prate = FUNC1(dss.parent_clk);

	fck_min = fck_min ? fck_min : 1;

	fckd_start = FUNC5(prate * m / fck_min, fckd_hw_max);
	fckd_stop = FUNC4(FUNC0(prate * m, fck_hw_max), 1ul);

	for (fckd = fckd_start; fckd >= fckd_stop; --fckd) {
		fck = FUNC0(prate, fckd) * m;

		if (func(fck, data))
			return true;
	}

	return false;
}