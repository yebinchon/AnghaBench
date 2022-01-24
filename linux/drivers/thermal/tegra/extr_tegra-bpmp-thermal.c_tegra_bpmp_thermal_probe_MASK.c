#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thermal_zone_device {int dummy; } ;
struct tegra_bpmp_thermal_zone {unsigned int idx; int /*<<< orphan*/  tz_device_update_work; struct thermal_zone_device* tzd; struct tegra_bpmp_thermal* tegra; } ;
struct tegra_bpmp_thermal {int /*<<< orphan*/  num_zones; struct tegra_bpmp_thermal_zone** zones; struct tegra_bpmp* bpmp; TYPE_1__* dev; } ;
struct tegra_bpmp {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  MRQ_THERMAL ; 
 int FUNC2 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  bpmp_mrq_thermal ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 struct tegra_bpmp* FUNC4 (int /*<<< orphan*/ ) ; 
 struct tegra_bpmp_thermal_zone** FUNC5 (TYPE_1__*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct tegra_bpmp_thermal_zone*) ; 
 void* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct thermal_zone_device* FUNC8 (TYPE_1__*,unsigned int,struct tegra_bpmp_thermal_zone*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct tegra_bpmp_thermal*) ; 
 int /*<<< orphan*/  tegra_bpmp_of_thermal_ops ; 
 int FUNC10 (struct tegra_bpmp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_bpmp_thermal*) ; 
 int FUNC11 (struct tegra_bpmp*,unsigned int*) ; 
 int FUNC12 (struct tegra_bpmp_thermal_zone*,int*) ; 
 int /*<<< orphan*/  tz_device_update_work_fn ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct tegra_bpmp *bpmp = FUNC4(pdev->dev.parent);
	struct tegra_bpmp_thermal *tegra;
	struct thermal_zone_device *tzd;
	unsigned int i, max_num_zones;
	int err;

	tegra = FUNC7(&pdev->dev, sizeof(*tegra), GFP_KERNEL);
	if (!tegra)
		return -ENOMEM;

	tegra->dev = &pdev->dev;
	tegra->bpmp = bpmp;

	err = FUNC11(bpmp, &max_num_zones);
	if (err) {
		FUNC3(&pdev->dev, "failed to get the number of zones: %d\n",
			err);
		return err;
	}

	tegra->zones = FUNC5(&pdev->dev, max_num_zones,
				    sizeof(*tegra->zones), GFP_KERNEL);
	if (!tegra->zones)
		return -ENOMEM;

	for (i = 0; i < max_num_zones; ++i) {
		struct tegra_bpmp_thermal_zone *zone;
		int temp;

		zone = FUNC7(&pdev->dev, sizeof(*zone), GFP_KERNEL);
		if (!zone)
			return -ENOMEM;

		zone->idx = i;
		zone->tegra = tegra;

		err = FUNC12(zone, &temp);
		if (err < 0) {
			FUNC6(&pdev->dev, zone);
			continue;
		}

		tzd = FUNC8(
			&pdev->dev, i, zone, &tegra_bpmp_of_thermal_ops);
		if (FUNC1(tzd)) {
			if (FUNC2(tzd) == -EPROBE_DEFER)
				return -EPROBE_DEFER;
			FUNC6(&pdev->dev, zone);
			continue;
		}

		zone->tzd = tzd;
		FUNC0(&zone->tz_device_update_work,
			  tz_device_update_work_fn);

		tegra->zones[tegra->num_zones++] = zone;
	}

	err = FUNC10(bpmp, MRQ_THERMAL, bpmp_mrq_thermal,
				     tegra);
	if (err) {
		FUNC3(&pdev->dev, "failed to register mrq handler: %d\n",
			err);
		return err;
	}

	FUNC9(pdev, tegra);

	return 0;
}