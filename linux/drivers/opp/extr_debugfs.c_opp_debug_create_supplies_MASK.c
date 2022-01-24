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
struct opp_table {int regulator_count; } ;
struct dev_pm_opp {TYPE_1__* supplies; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int /*<<< orphan*/  u_amp; int /*<<< orphan*/  u_volt_max; int /*<<< orphan*/  u_volt_min; int /*<<< orphan*/  u_volt; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_IRUGO ; 
 struct dentry* FUNC0 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC3(struct dev_pm_opp *opp,
				      struct opp_table *opp_table,
				      struct dentry *pdentry)
{
	struct dentry *d;
	int i;

	for (i = 0; i < opp_table->regulator_count; i++) {
		char name[15];

		FUNC2(name, sizeof(name), "supply-%d", i);

		/* Create per-opp directory */
		d = FUNC0(name, pdentry);

		FUNC1("u_volt_target", S_IRUGO, d,
				     &opp->supplies[i].u_volt);

		FUNC1("u_volt_min", S_IRUGO, d,
				     &opp->supplies[i].u_volt_min);

		FUNC1("u_volt_max", S_IRUGO, d,
				     &opp->supplies[i].u_volt_max);

		FUNC1("u_amp", S_IRUGO, d,
				     &opp->supplies[i].u_amp);
	}
}