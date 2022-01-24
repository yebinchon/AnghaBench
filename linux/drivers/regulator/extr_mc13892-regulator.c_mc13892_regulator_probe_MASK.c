#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct regulator_ops {int dummy; } ;
struct regulator_init_data {int dummy; } ;
struct regulator_desc {int /*<<< orphan*/  name; TYPE_2__* ops; } ;
struct regulator_config {struct device_node* of_node; struct mc13xxx_regulator_priv* driver_data; struct regulator_init_data* init_data; TYPE_7__* dev; } ;
struct TYPE_15__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_7__ dev; } ;
struct mc13xxx_regulator_priv {int num_regulators; int /*<<< orphan*/ * regulators; struct mc13xxx* mc13xxx; TYPE_4__* mc13xxx_regulators; } ;
struct mc13xxx_regulator_platform_data {int num_regulators; TYPE_1__* regulators; } ;
struct mc13xxx_regulator_init_data {int id; struct device_node* node; struct regulator_init_data* init_data; } ;
struct mc13xxx {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_14__ {struct regulator_desc desc; } ;
struct TYPE_13__ {int /*<<< orphan*/  get_mode; int /*<<< orphan*/  set_mode; } ;
struct TYPE_12__ {int id; struct regulator_init_data* init_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MC13892_REVISION ; 
 int /*<<< orphan*/  MC13892_SWITCHERS4 ; 
 int MC13892_SWITCHERS4_SW1MODE_AUTO ; 
 int MC13892_SWITCHERS4_SW1MODE_M ; 
 int MC13892_SWITCHERS4_SW2MODE_AUTO ; 
 int MC13892_SWITCHERS4_SW2MODE_M ; 
 int /*<<< orphan*/  MC13892_SWITCHERS5 ; 
 int MC13892_SWITCHERS5_SW3MODE_AUTO ; 
 int MC13892_SWITCHERS5_SW3MODE_M ; 
 int MC13892_SWITCHERS5_SW4MODE_AUTO ; 
 int MC13892_SWITCHERS5_SW4MODE_M ; 
 size_t MC13892_VCAM ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,char*,int /*<<< orphan*/ ) ; 
 struct mc13xxx* FUNC4 (int /*<<< orphan*/ ) ; 
 struct mc13xxx_regulator_platform_data* FUNC5 (TYPE_7__*) ; 
 struct mc13xxx_regulator_priv* FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,struct regulator_desc*,struct regulator_config*) ; 
 TYPE_4__* mc13892_regulators ; 
 int /*<<< orphan*/  mc13892_vcam_get_mode ; 
 TYPE_2__ mc13892_vcam_ops ; 
 int /*<<< orphan*/  mc13892_vcam_set_mode ; 
 int FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mc13xxx*) ; 
 struct mc13xxx_regulator_init_data* FUNC10 (struct platform_device*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct mc13xxx*,int /*<<< orphan*/ ,int*) ; 
 int FUNC12 (struct mc13xxx*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mc13xxx*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct mc13xxx_regulator_priv*) ; 
 int /*<<< orphan*/  regulators ; 
 int /*<<< orphan*/  FUNC16 (struct mc13xxx_regulator_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct mc13xxx_regulator_priv *priv;
	struct mc13xxx *mc13892 = FUNC4(pdev->dev.parent);
	struct mc13xxx_regulator_platform_data *pdata =
		FUNC5(&pdev->dev);
	struct mc13xxx_regulator_init_data *mc13xxx_data;
	struct regulator_config config = { };
	int i, ret;
	int num_regulators = 0;
	u32 val;

	num_regulators = FUNC8(pdev);

	if (num_regulators <= 0 && pdata)
		num_regulators = pdata->num_regulators;
	if (num_regulators <= 0)
		return -EINVAL;

	priv = FUNC6(&pdev->dev,
			    FUNC16(priv, regulators, num_regulators),
			    GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->num_regulators = num_regulators;
	priv->mc13xxx_regulators = mc13892_regulators;
	priv->mc13xxx = mc13892;
	FUNC15(pdev, priv);

	FUNC9(mc13892);
	ret = FUNC11(mc13892, MC13892_REVISION, &val);
	if (ret)
		goto err_unlock;

	/* enable switch auto mode (on 2.0A silicon only) */
	if ((val & 0x0000FFFF) == 0x45d0) {
		ret = FUNC12(mc13892, MC13892_SWITCHERS4,
			MC13892_SWITCHERS4_SW1MODE_M |
			MC13892_SWITCHERS4_SW2MODE_M,
			MC13892_SWITCHERS4_SW1MODE_AUTO |
			MC13892_SWITCHERS4_SW2MODE_AUTO);
		if (ret)
			goto err_unlock;

		ret = FUNC12(mc13892, MC13892_SWITCHERS5,
			MC13892_SWITCHERS5_SW3MODE_M |
			MC13892_SWITCHERS5_SW4MODE_M,
			MC13892_SWITCHERS5_SW3MODE_AUTO |
			MC13892_SWITCHERS5_SW4MODE_AUTO);
		if (ret)
			goto err_unlock;
	}
	FUNC13(mc13892);

	/* update mc13892_vcam ops */
	FUNC14(&mc13892_vcam_ops, mc13892_regulators[MC13892_VCAM].desc.ops,
						sizeof(struct regulator_ops));
	mc13892_vcam_ops.set_mode = mc13892_vcam_set_mode,
	mc13892_vcam_ops.get_mode = mc13892_vcam_get_mode,
	mc13892_regulators[MC13892_VCAM].desc.ops = &mc13892_vcam_ops;

	mc13xxx_data = FUNC10(pdev, mc13892_regulators,
					FUNC0(mc13892_regulators));

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
		desc = &mc13892_regulators[id].desc;

		config.dev = &pdev->dev;
		config.init_data = init_data;
		config.driver_data = priv;
		config.of_node = node;

		priv->regulators[i] = FUNC7(&pdev->dev, desc,
							      &config);
		if (FUNC1(priv->regulators[i])) {
			FUNC3(&pdev->dev, "failed to register regulator %s\n",
				mc13892_regulators[i].desc.name);
			return FUNC2(priv->regulators[i]);
		}
	}

	return 0;

err_unlock:
	FUNC13(mc13892);
	return ret;
}