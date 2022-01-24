#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qoriq_tmu_data {TYPE_1__* regs; TYPE_2__** sensor; } ;
struct qoriq_sensor {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int id; int /*<<< orphan*/  tzd; struct qoriq_tmu_data* qdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  tmr; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SITES_MAX ; 
 int TMR_ALPF ; 
 int TMR_ME ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct qoriq_tmu_data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  tmu_tz_ops ; 
 int /*<<< orphan*/  FUNC5 (struct qoriq_tmu_data*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct qoriq_tmu_data *qdata = FUNC4(pdev);
	int id, sites = 0;

	for (id = 0; id < SITES_MAX; id++) {
		qdata->sensor[id] = FUNC2(&pdev->dev,
				sizeof(struct qoriq_sensor), GFP_KERNEL);
		if (!qdata->sensor[id])
			return -ENOMEM;

		qdata->sensor[id]->id = id;
		qdata->sensor[id]->qdata = qdata;
		qdata->sensor[id]->tzd = FUNC3(
				&pdev->dev, id, qdata->sensor[id], &tmu_tz_ops);
		if (FUNC0(qdata->sensor[id]->tzd)) {
			if (FUNC1(qdata->sensor[id]->tzd) == -ENODEV)
				continue;
			else
				return FUNC1(qdata->sensor[id]->tzd);
		}

		sites |= 0x1 << (15 - id);
	}

	/* Enable monitoring */
	if (sites != 0)
		FUNC5(qdata, sites | TMR_ME | TMR_ALPF, &qdata->regs->tmr);

	return 0;
}