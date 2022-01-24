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
struct rpmpd {int enabled; scalar_t__ corner; } ;
struct generic_pm_domain {int dummy; } ;

/* Variables and functions */
 struct rpmpd* FUNC0 (struct generic_pm_domain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rpmpd*) ; 
 int /*<<< orphan*/  rpmpd_lock ; 
 int FUNC4 (struct rpmpd*,int) ; 

__attribute__((used)) static int FUNC5(struct generic_pm_domain *domain)
{
	int ret;
	struct rpmpd *pd = FUNC0(domain);

	FUNC1(&rpmpd_lock);

	ret = FUNC4(pd, true);
	if (ret)
		goto out;

	pd->enabled = true;

	if (pd->corner)
		ret = FUNC3(pd);

out:
	FUNC2(&rpmpd_lock);

	return ret;
}