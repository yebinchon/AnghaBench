#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct power_supply_config {scalar_t__* supplied_to; int num_supplicants; struct pm860x_charger_info* drv_data; } ;
struct pm860x_chip {scalar_t__ id; int /*<<< orphan*/  dev; int /*<<< orphan*/  client; int /*<<< orphan*/  companion; } ;
struct pm860x_charger_info {scalar_t__* irq; int irq_nums; int /*<<< orphan*/  usb; int /*<<< orphan*/  lock; TYPE_1__* dev; int /*<<< orphan*/  i2c_8606; int /*<<< orphan*/  i2c; struct pm860x_chip* chip; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int num_resources; TYPE_1__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ CHIP_PM8607 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHG_NORMAL_LOW ; 
 int /*<<< orphan*/  VCHG_OVP_LOW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 struct pm860x_chip* FUNC4 (int /*<<< orphan*/ ) ; 
 struct pm860x_charger_info* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct pm860x_charger_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct pm860x_charger_info*) ; 
 int /*<<< orphan*/  pm860x_charger_desc ; 
 int /*<<< orphan*/  FUNC10 (struct pm860x_charger_info*) ; 
 TYPE_2__* pm860x_irq_descs ; 
 scalar_t__* pm860x_supplied_to ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pm860x_charger_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct pm860x_charger_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct pm860x_chip *chip = FUNC4(pdev->dev.parent);
	struct power_supply_config psy_cfg = {};
	struct pm860x_charger_info *info;
	int ret;
	int count;
	int i;
	int j;

	info = FUNC5(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	count = pdev->num_resources;
	for (i = 0, j = 0; i < count; i++) {
		info->irq[j] = FUNC8(pdev, i);
		if (info->irq[j] < 0)
			continue;
		j++;
	}
	info->irq_nums = j;

	info->chip = chip;
	info->i2c =
	    (chip->id == CHIP_PM8607) ? chip->client : chip->companion;
	info->i2c_8606 =
	    (chip->id == CHIP_PM8607) ? chip->companion : chip->client;
	if (!info->i2c_8606) {
		FUNC3(&pdev->dev, "Missed I2C address of 88PM8606!\n");
		ret = -EINVAL;
		goto out;
	}
	info->dev = &pdev->dev;

	/* set init value for the case we are not using battery */
	FUNC14(info, VCHG_NORMAL_LOW, VCHG_OVP_LOW);

	FUNC7(&info->lock);
	FUNC9(pdev, info);

	psy_cfg.drv_data = info;
	psy_cfg.supplied_to = pm860x_supplied_to;
	psy_cfg.num_supplicants = FUNC0(pm860x_supplied_to);
	info->usb = FUNC11(&pdev->dev, &pm860x_charger_desc,
					  &psy_cfg);
	if (FUNC1(info->usb)) {
		ret = FUNC2(info->usb);
		goto out;
	}

	FUNC10(info);

	for (i = 0; i < FUNC0(info->irq); i++) {
		ret = FUNC13(info->irq[i], NULL,
			pm860x_irq_descs[i].handler,
			IRQF_ONESHOT, pm860x_irq_descs[i].name, info);
		if (ret < 0) {
			FUNC3(chip->dev, "Failed to request IRQ: #%d: %d\n",
				info->irq[i], ret);
			goto out_irq;
		}
	}
	return 0;

out_irq:
	FUNC12(info->usb);
	while (--i >= 0)
		FUNC6(info->irq[i], info);
out:
	return ret;
}