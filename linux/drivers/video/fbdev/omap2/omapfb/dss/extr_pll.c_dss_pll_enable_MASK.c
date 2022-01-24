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
struct dss_pll {int /*<<< orphan*/  clkin; scalar_t__ regulator; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable ) (struct dss_pll*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct dss_pll*) ; 

int FUNC5(struct dss_pll *pll)
{
	int r;

	r = FUNC1(pll->clkin);
	if (r)
		return r;

	if (pll->regulator) {
		r = FUNC3(pll->regulator);
		if (r)
			goto err_reg;
	}

	r = pll->ops->enable(pll);
	if (r)
		goto err_enable;

	return 0;

err_enable:
	if (pll->regulator)
		FUNC2(pll->regulator);
err_reg:
	FUNC0(pll->clkin);
	return r;
}