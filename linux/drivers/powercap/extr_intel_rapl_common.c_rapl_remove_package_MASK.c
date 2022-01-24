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
struct rapl_package {int nr_domains; int /*<<< orphan*/  plist; TYPE_1__* priv; int /*<<< orphan*/  name; struct rapl_domain* domains; } ;
struct rapl_domain {scalar_t__ id; int /*<<< orphan*/  power_zone; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  control_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  PL1_CLAMP ; 
 int /*<<< orphan*/  PL1_ENABLE ; 
 int /*<<< orphan*/  PL2_CLAMP ; 
 int /*<<< orphan*/  PL2_ENABLE ; 
 scalar_t__ RAPL_DOMAIN_PACKAGE ; 
 int FUNC0 (struct rapl_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct rapl_package*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rapl_package*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rapl_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct rapl_package *rp)
{
	struct rapl_domain *rd, *rd_package = NULL;

	FUNC3(rp);

	for (rd = rp->domains; rd < rp->domains + rp->nr_domains; rd++) {
		FUNC6(rd, PL1_ENABLE, 0);
		FUNC6(rd, PL1_CLAMP, 0);
		if (FUNC0(rd) > 1) {
			FUNC6(rd, PL2_ENABLE, 0);
			FUNC6(rd, PL2_CLAMP, 0);
		}
		if (rd->id == RAPL_DOMAIN_PACKAGE) {
			rd_package = rd;
			continue;
		}
		FUNC5("remove package, undo power limit on %s: %s\n",
			 rp->name, rd->name);
		FUNC4(rp->priv->control_type,
					 &rd->power_zone);
	}
	/* do parent zone last */
	FUNC4(rp->priv->control_type,
				 &rd_package->power_zone);
	FUNC2(&rp->plist);
	FUNC1(rp);
}