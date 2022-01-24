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
struct opp_table {int required_opp_count; int /*<<< orphan*/  is_genpd; struct opp_table** required_opp_tables; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct opp_table*) ; 
 struct opp_table* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct opp_table** FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC6 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (struct device_node*,int) ; 

__attribute__((used)) static void FUNC9(struct opp_table *opp_table,
					     struct device *dev,
					     struct device_node *opp_np)
{
	struct opp_table **required_opp_tables;
	struct device_node *required_np, *np;
	int count, i;

	/* Traversing the first OPP node is all we need */
	np = FUNC6(opp_np, NULL);
	if (!np) {
		FUNC3(dev, "Empty OPP table\n");
		return;
	}

	count = FUNC5(np, "required-opps", NULL);
	if (!count)
		goto put_np;

	required_opp_tables = FUNC4(count, sizeof(*required_opp_tables),
				      GFP_KERNEL);
	if (!required_opp_tables)
		goto put_np;

	opp_table->required_opp_tables = required_opp_tables;
	opp_table->required_opp_count = count;

	for (i = 0; i < count; i++) {
		required_np = FUNC8(np, i);
		if (!required_np)
			goto free_required_tables;

		required_opp_tables[i] = FUNC1(required_np);
		FUNC7(required_np);

		if (FUNC0(required_opp_tables[i]))
			goto free_required_tables;

		/*
		 * We only support genpd's OPPs in the "required-opps" for now,
		 * as we don't know how much about other cases. Error out if the
		 * required OPP doesn't belong to a genpd.
		 */
		if (!required_opp_tables[i]->is_genpd) {
			FUNC3(dev, "required-opp doesn't belong to genpd: %pOF\n",
				required_np);
			goto free_required_tables;
		}
	}

	goto put_np;

free_required_tables:
	FUNC2(opp_table);
put_np:
	FUNC7(np);
}