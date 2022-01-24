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
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int of_reset_n_cells; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct berlin_reset_priv {TYPE_1__ rcdev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  berlin_reset_ops ; 
 int /*<<< orphan*/  berlin_reset_xlate ; 
 struct berlin_reset_priv* FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device_node *parent_np = FUNC3(pdev->dev.of_node);
	struct berlin_reset_priv *priv;

	priv = FUNC2(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->regmap = FUNC6(parent_np);
	FUNC4(parent_np);
	if (FUNC0(priv->regmap))
		return FUNC1(priv->regmap);

	priv->rcdev.owner = THIS_MODULE;
	priv->rcdev.ops = &berlin_reset_ops;
	priv->rcdev.of_node = pdev->dev.of_node;
	priv->rcdev.of_reset_n_cells = 2;
	priv->rcdev.of_xlate = berlin_reset_xlate;

	return FUNC5(&priv->rcdev);
}