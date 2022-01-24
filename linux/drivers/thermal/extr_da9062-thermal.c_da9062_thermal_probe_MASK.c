#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct da9062_thermal {int irq; TYPE_2__* zone; TYPE_1__* config; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; TYPE_4__* dev; int /*<<< orphan*/  mode; struct da9062* hw; } ;
struct da9062 {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  passive_delay; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int DA9062_DEFAULT_POLLING_MS_PERIOD ; 
 unsigned int DA9062_MAX_POLLING_MS_PERIOD ; 
 unsigned int DA9062_MIN_POLLING_MS_PERIOD ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  THERMAL_DEVICE_ENABLED ; 
 int /*<<< orphan*/  da9062_compatible_reg_id_table ; 
 int /*<<< orphan*/  da9062_thermal_irq_handler ; 
 int /*<<< orphan*/  da9062_thermal_ops ; 
 int /*<<< orphan*/  da9062_thermal_poll_on ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*) ; 
 struct da9062* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,unsigned int) ; 
 struct da9062_thermal* FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*,unsigned int*) ; 
 int FUNC11 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct da9062_thermal*) ; 
 int FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct da9062_thermal*) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct da9062_thermal*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct da9062 *chip = FUNC5(pdev->dev.parent);
	struct da9062_thermal *thermal;
	unsigned int pp_tmp = DA9062_DEFAULT_POLLING_MS_PERIOD;
	const struct of_device_id *match;
	int ret = 0;

	match = FUNC9(da9062_compatible_reg_id_table,
			      pdev->dev.of_node);
	if (!match)
		return -ENXIO;

	if (pdev->dev.of_node) {
		if (!FUNC10(pdev->dev.of_node,
					  "polling-delay-passive",
					  &pp_tmp)) {
			if (pp_tmp < DA9062_MIN_POLLING_MS_PERIOD ||
			    pp_tmp > DA9062_MAX_POLLING_MS_PERIOD) {
				FUNC6(&pdev->dev,
					 "Out-of-range polling period %d ms\n",
					 pp_tmp);
				pp_tmp = DA9062_DEFAULT_POLLING_MS_PERIOD;
			}
		}
	}

	thermal = FUNC7(&pdev->dev, sizeof(struct da9062_thermal),
			       GFP_KERNEL);
	if (!thermal) {
		ret = -ENOMEM;
		goto err;
	}

	thermal->config = match->data;
	thermal->hw = chip;
	thermal->mode = THERMAL_DEVICE_ENABLED;
	thermal->dev = &pdev->dev;

	FUNC0(&thermal->work, da9062_thermal_poll_on);
	FUNC8(&thermal->lock);

	thermal->zone = FUNC14(thermal->config->name,
					1, 0, thermal,
					&da9062_thermal_ops, NULL, pp_tmp,
					0);
	if (FUNC1(thermal->zone)) {
		FUNC4(&pdev->dev, "Cannot register thermal zone device\n");
		ret = FUNC2(thermal->zone);
		goto err;
	}

	FUNC3(&pdev->dev,
		"TJUNC temperature polling period set at %d ms\n",
		thermal->zone->passive_delay);

	ret = FUNC11(pdev, "THERMAL");
	if (ret < 0) {
		FUNC4(&pdev->dev, "Failed to get platform IRQ.\n");
		goto err_zone;
	}
	thermal->irq = ret;

	ret = FUNC13(thermal->irq, NULL,
				   da9062_thermal_irq_handler,
				   IRQF_TRIGGER_LOW | IRQF_ONESHOT,
				   "THERMAL", thermal);
	if (ret) {
		FUNC4(&pdev->dev,
			"Failed to request thermal device IRQ.\n");
		goto err_zone;
	}

	FUNC12(pdev, thermal);
	return 0;

err_zone:
	FUNC15(thermal->zone);
err:
	return ret;
}