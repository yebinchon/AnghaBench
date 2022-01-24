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
struct rapl_package {int nr_domains; TYPE_1__* priv; int /*<<< orphan*/  name; struct rapl_domain* domains; struct powercap_zone* power_zone; } ;
struct rapl_domain {size_t id; int /*<<< orphan*/  power_zone; int /*<<< orphan*/  name; } ;
struct powercap_zone {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  control_type; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct powercap_zone*) ; 
 int FUNC1 (struct powercap_zone*) ; 
 size_t RAPL_DOMAIN_PACKAGE ; 
 int /*<<< orphan*/  constraint_ops ; 
 int FUNC2 (struct rapl_domain*) ; 
 struct powercap_zone* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct powercap_zone*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct rapl_package*) ; 
 int /*<<< orphan*/ * zone_ops ; 

__attribute__((used)) static int FUNC8(struct rapl_package *rp)
{
	struct rapl_domain *rd;
	struct powercap_zone *power_zone = NULL;
	int nr_pl, ret;

	/* Update the domain data of the new package */
	FUNC7(rp);

	/* first we register package domain as the parent zone */
	for (rd = rp->domains; rd < rp->domains + rp->nr_domains; rd++) {
		if (rd->id == RAPL_DOMAIN_PACKAGE) {
			nr_pl = FUNC2(rd);
			FUNC5("register package domain %s\n", rp->name);
			power_zone = FUNC3(&rd->power_zone,
					    rp->priv->control_type, rp->name,
					    NULL, &zone_ops[rd->id], nr_pl,
					    &constraint_ops);
			if (FUNC0(power_zone)) {
				FUNC5("failed to register power zone %s\n",
					 rp->name);
				return FUNC1(power_zone);
			}
			/* track parent zone in per package/socket data */
			rp->power_zone = power_zone;
			/* done, only one package domain per socket */
			break;
		}
	}
	if (!power_zone) {
		FUNC6("no package domain found, unknown topology!\n");
		return -ENODEV;
	}
	/* now register domains as children of the socket/package */
	for (rd = rp->domains; rd < rp->domains + rp->nr_domains; rd++) {
		if (rd->id == RAPL_DOMAIN_PACKAGE)
			continue;
		/* number of power limits per domain varies */
		nr_pl = FUNC2(rd);
		power_zone = FUNC3(&rd->power_zone,
						    rp->priv->control_type,
						    rd->name, rp->power_zone,
						    &zone_ops[rd->id], nr_pl,
						    &constraint_ops);

		if (FUNC0(power_zone)) {
			FUNC5("failed to register power_zone, %s:%s\n",
				 rp->name, rd->name);
			ret = FUNC1(power_zone);
			goto err_cleanup;
		}
	}
	return 0;

err_cleanup:
	/*
	 * Clean up previously initialized domains within the package if we
	 * failed after the first domain setup.
	 */
	while (--rd >= rp->domains) {
		FUNC5("unregister %s domain %s\n", rp->name, rd->name);
		FUNC4(rp->priv->control_type,
					 &rd->power_zone);
	}

	return ret;
}