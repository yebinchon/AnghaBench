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
struct opp_table {struct dentry* dentry; } ;
struct dev_pm_opp {unsigned long rate; unsigned long clock_latency_ns; struct dentry* dentry; int /*<<< orphan*/  pstate; int /*<<< orphan*/  suspend; int /*<<< orphan*/  turbo; int /*<<< orphan*/  dynamic; int /*<<< orphan*/  available; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  S_IRUGO ; 
 unsigned long FUNC0 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC2 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,struct dentry*,unsigned long*) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct dev_pm_opp*,struct opp_table*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,unsigned long) ; 

void FUNC8(struct dev_pm_opp *opp, struct opp_table *opp_table)
{
	struct dentry *pdentry = opp_table->dentry;
	struct dentry *d;
	unsigned long id;
	char name[25];	/* 20 chars for 64 bit value + 5 (opp:\0) */

	/*
	 * Get directory name for OPP.
	 *
	 * - Normally rate is unique to each OPP, use it to get unique opp-name.
	 * - For some devices rate isn't available, use index instead.
	 */
	if (FUNC5(opp->rate))
		id = opp->rate;
	else
		id = FUNC0(opp_table);

	FUNC7(name, sizeof(name), "opp:%lu", id);

	/* Create per-opp directory */
	d = FUNC2(name, pdentry);

	FUNC1("available", S_IRUGO, d, &opp->available);
	FUNC1("dynamic", S_IRUGO, d, &opp->dynamic);
	FUNC1("turbo", S_IRUGO, d, &opp->turbo);
	FUNC1("suspend", S_IRUGO, d, &opp->suspend);
	FUNC3("performance_state", S_IRUGO, d, &opp->pstate);
	FUNC4("rate_hz", S_IRUGO, d, &opp->rate);
	FUNC4("clock_latency_ns", S_IRUGO, d,
			     &opp->clock_latency_ns);

	FUNC6(opp, opp_table, d);

	opp->dentry = d;
}