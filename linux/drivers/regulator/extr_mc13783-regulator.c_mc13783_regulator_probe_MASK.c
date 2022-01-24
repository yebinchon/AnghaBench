#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct regulator_init_data {int dummy; } ;
struct regulator_desc {int /*<<< orphan*/  name; } ;
struct regulator_config {struct device_node* of_node; struct mc13xxx_regulator_priv* driver_data; struct regulator_init_data* init_data; TYPE_4__* dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct mc13xxx_regulator_priv {int num_regulators; int /*<<< orphan*/ * regulators; struct mc13xxx* mc13xxx; TYPE_2__* mc13xxx_regulators; } ;
struct mc13xxx_regulator_platform_data {int num_regulators; TYPE_1__* regulators; } ;
struct mc13xxx_regulator_init_data {int id; struct device_node* node; struct regulator_init_data* init_data; } ;
struct mc13xxx {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {struct regulator_desc desc; } ;
struct TYPE_9__ {int id; struct regulator_init_data* init_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 struct mc13xxx* FUNC4 (int /*<<< orphan*/ ) ; 
 struct mc13xxx_regulator_platform_data* FUNC5 (TYPE_4__*) ; 
 struct mc13xxx_regulator_priv* FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,struct regulator_desc*,struct regulator_config*) ; 
 TYPE_2__* mc13783_regulators ; 
 int FUNC8 (struct platform_device*) ; 
 struct mc13xxx_regulator_init_data* FUNC9 (struct platform_device*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct mc13xxx_regulator_priv*) ; 
 int /*<<< orphan*/  regulators ; 
 int /*<<< orphan*/  FUNC11 (struct mc13xxx_regulator_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct mc13xxx_regulator_priv *priv;
	struct mc13xxx *mc13783 = FUNC4(pdev->dev.parent);
	struct mc13xxx_regulator_platform_data *pdata =
		FUNC5(&pdev->dev);
	struct mc13xxx_regulator_init_data *mc13xxx_data;
	struct regulator_config config = { };
	int i, num_regulators;

	num_regulators = FUNC8(pdev);

	if (num_regulators <= 0 && pdata)
		num_regulators = pdata->num_regulators;
	if (num_regulators <= 0)
		return -EINVAL;

	priv = FUNC6(&pdev->dev,
			    FUNC11(priv, regulators, num_regulators),
			    GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->num_regulators = num_regulators;
	priv->mc13xxx_regulators = mc13783_regulators;
	priv->mc13xxx = mc13783;
	FUNC10(pdev, priv);

	mc13xxx_data = FUNC9(pdev, mc13783_regulators,
					FUNC0(mc13783_regulators));

	for (i = 0; i < priv->num_regulators; i++) {
		struct regulator_init_data *init_data;
		struct regulator_desc *desc;
		struct device_node *node = NULL;
		int id;

		if (mc13xxx_data) {
			id = mc13xxx_data[i].id;
			init_data = mc13xxx_data[i].init_data;
			node = mc13xxx_data[i].node;
		} else {
			id = pdata->regulators[i].id;
			init_data = pdata->regulators[i].init_data;
		}
		desc = &mc13783_regulators[id].desc;

		config.dev = &pdev->dev;
		config.init_data = init_data;
		config.driver_data = priv;
		config.of_node = node;

		priv->regulators[i] = FUNC7(&pdev->dev, desc,
							      &config);
		if (FUNC1(priv->regulators[i])) {
			FUNC3(&pdev->dev, "failed to register regulator %s\n",
				mc13783_regulators[i].desc.name);
			return FUNC2(priv->regulators[i]);
		}
	}

	return 0;
}