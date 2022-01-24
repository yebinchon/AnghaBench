#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  power_off; int /*<<< orphan*/  power_on; int /*<<< orphan*/  name; } ;
struct qmp_pd {TYPE_1__ pd; struct qmp* qmp; } ;
struct genpd_onecell_data {int num_domains; TYPE_1__** domains; } ;
struct qmp {struct device* dev; struct genpd_onecell_data pd_data; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 void* FUNC2 (struct device*,size_t,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct genpd_onecell_data*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  qmp_pd_power_off ; 
 int /*<<< orphan*/  qmp_pd_power_on ; 
 int /*<<< orphan*/ * sdm845_resources ; 

__attribute__((used)) static int FUNC6(struct qmp *qmp)
{
	struct genpd_onecell_data *data = &qmp->pd_data;
	struct device *dev = qmp->dev;
	struct qmp_pd *res;
	size_t num = FUNC0(sdm845_resources);
	int ret;
	int i;

	res = FUNC2(dev, num, sizeof(*res), GFP_KERNEL);
	if (!res)
		return -ENOMEM;

	data->domains = FUNC2(dev, num, sizeof(*data->domains),
				     GFP_KERNEL);
	if (!data->domains)
		return -ENOMEM;

	for (i = 0; i < num; i++) {
		res[i].qmp = qmp;
		res[i].pd.name = sdm845_resources[i];
		res[i].pd.power_on = qmp_pd_power_on;
		res[i].pd.power_off = qmp_pd_power_off;

		ret = FUNC4(&res[i].pd, NULL, true);
		if (ret < 0) {
			FUNC1(dev, "failed to init genpd\n");
			goto unroll_genpds;
		}

		data->domains[i] = &res[i].pd;
	}

	data->num_domains = i;

	ret = FUNC3(dev->of_node, data);
	if (ret < 0)
		goto unroll_genpds;

	return 0;

unroll_genpds:
	for (i--; i >= 0; i--)
		FUNC5(data->domains[i]);

	return ret;
}