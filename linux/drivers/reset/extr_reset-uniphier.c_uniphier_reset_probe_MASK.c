#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int nr_resets; int /*<<< orphan*/  of_node; int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; } ;
struct uniphier_reset_priv {TYPE_2__ rcdev; struct uniphier_reset_data const* data; struct regmap* regmap; struct device* dev; } ;
struct uniphier_reset_data {scalar_t__ id; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; TYPE_1__* driver; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 scalar_t__ UNIPHIER_RESET_ID_END ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct uniphier_reset_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,TYPE_2__*) ; 
 unsigned int FUNC6 (unsigned int,scalar_t__) ; 
 struct uniphier_reset_data* FUNC7 (struct device*) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 struct regmap* FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  uniphier_reset_ops ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct uniphier_reset_priv *priv;
	const struct uniphier_reset_data *p, *data;
	struct regmap *regmap;
	struct device_node *parent;
	unsigned int nr_resets = 0;

	data = FUNC7(dev);
	if (FUNC2(!data))
		return -EINVAL;

	parent = FUNC8(dev->of_node); /* parent should be syscon node */
	regmap = FUNC10(parent);
	FUNC9(parent);
	if (FUNC0(regmap)) {
		FUNC3(dev, "failed to get regmap (error %ld)\n",
			FUNC1(regmap));
		return FUNC1(regmap);
	}

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	for (p = data; p->id != UNIPHIER_RESET_ID_END; p++)
		nr_resets = FUNC6(nr_resets, p->id + 1);

	priv->rcdev.ops = &uniphier_reset_ops;
	priv->rcdev.owner = dev->driver->owner;
	priv->rcdev.of_node = dev->of_node;
	priv->rcdev.nr_resets = nr_resets;
	priv->dev = dev;
	priv->regmap = regmap;
	priv->data = data;

	return FUNC5(&pdev->dev, &priv->rcdev);
}