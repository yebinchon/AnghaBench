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
struct rpmhpd {int enabled; scalar_t__ corner; } ;
struct generic_pm_domain {int dummy; } ;

/* Variables and functions */
 struct rpmhpd* FUNC0 (struct generic_pm_domain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rpmhpd*,scalar_t__) ; 
 int /*<<< orphan*/  rpmhpd_lock ; 

__attribute__((used)) static int FUNC4(struct generic_pm_domain *domain)
{
	struct rpmhpd *pd = FUNC0(domain);
	int ret = 0;

	FUNC1(&rpmhpd_lock);

	if (pd->corner)
		ret = FUNC3(pd, pd->corner);

	if (!ret)
		pd->enabled = true;

	FUNC2(&rpmhpd_lock);

	return ret;
}