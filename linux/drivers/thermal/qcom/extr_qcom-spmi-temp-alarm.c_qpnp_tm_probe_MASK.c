#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qpnp_tm_chip {int /*<<< orphan*/ * tz_dev; scalar_t__ subtype; int /*<<< orphan*/  base; int /*<<< orphan*/ * adc; int /*<<< orphan*/  map; int /*<<< orphan*/  lock; TYPE_1__* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QPNP_TM_REG_SUBTYPE ; 
 int /*<<< orphan*/  QPNP_TM_REG_TYPE ; 
 scalar_t__ QPNP_TM_SUBTYPE_GEN1 ; 
 scalar_t__ QPNP_TM_SUBTYPE_GEN2 ; 
 scalar_t__ QPNP_TM_TYPE ; 
 int /*<<< orphan*/  THERMAL_EVENT_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct qpnp_tm_chip*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char*) ; 
 struct qpnp_tm_chip* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qpnp_tm_chip*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,struct qpnp_tm_chip*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct qpnp_tm_chip*) ; 
 int /*<<< orphan*/  qpnp_tm_isr ; 
 int FUNC13 (struct qpnp_tm_chip*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  qpnp_tm_sensor_ops ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct qpnp_tm_chip *chip;
	struct device_node *node;
	u8 type, subtype;
	u32 res;
	int ret, irq;

	node = pdev->dev.of_node;

	chip = FUNC6(&pdev->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	FUNC4(&pdev->dev, chip);
	chip->dev = &pdev->dev;

	FUNC9(&chip->lock);

	chip->map = FUNC3(pdev->dev.parent, NULL);
	if (!chip->map)
		return -ENXIO;

	ret = FUNC10(node, "reg", &res);
	if (ret < 0)
		return ret;

	irq = FUNC11(pdev, 0);
	if (irq < 0)
		return irq;

	/* ADC based measurements are optional */
	chip->adc = FUNC5(&pdev->dev, "thermal");
	if (FUNC0(chip->adc)) {
		ret = FUNC1(chip->adc);
		chip->adc = NULL;
		if (ret == -EPROBE_DEFER)
			return ret;
	}

	chip->base = res;

	ret = FUNC13(chip, QPNP_TM_REG_TYPE, &type);
	if (ret < 0) {
		FUNC2(&pdev->dev, "could not read type\n");
		return ret;
	}

	ret = FUNC13(chip, QPNP_TM_REG_SUBTYPE, &subtype);
	if (ret < 0) {
		FUNC2(&pdev->dev, "could not read subtype\n");
		return ret;
	}

	if (type != QPNP_TM_TYPE || (subtype != QPNP_TM_SUBTYPE_GEN1
				     && subtype != QPNP_TM_SUBTYPE_GEN2)) {
		FUNC2(&pdev->dev, "invalid type 0x%02x or subtype 0x%02x\n",
			type, subtype);
		return -ENODEV;
	}

	chip->subtype = subtype;

	/*
	 * Register the sensor before initializing the hardware to be able to
	 * read the trip points. get_temp() returns the default temperature
	 * before the hardware initialization is completed.
	 */
	chip->tz_dev = FUNC8(
		&pdev->dev, 0, chip, &qpnp_tm_sensor_ops);
	if (FUNC0(chip->tz_dev)) {
		FUNC2(&pdev->dev, "failed to register sensor\n");
		return FUNC1(chip->tz_dev);
	}

	ret = FUNC12(chip);
	if (ret < 0) {
		FUNC2(&pdev->dev, "init failed\n");
		return ret;
	}

	ret = FUNC7(&pdev->dev, irq, NULL, qpnp_tm_isr,
					IRQF_ONESHOT, node->name, chip);
	if (ret < 0)
		return ret;

	FUNC14(chip->tz_dev, THERMAL_EVENT_UNSPECIFIED);

	return 0;
}