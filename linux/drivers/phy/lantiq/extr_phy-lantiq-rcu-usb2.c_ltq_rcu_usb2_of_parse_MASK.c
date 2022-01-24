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
struct platform_device {int dummy; } ;
struct ltq_rcu_usb2_priv {int /*<<< orphan*/  phy_reset; int /*<<< orphan*/  ctrl_reset; int /*<<< orphan*/  phy_gate_clk; void* ana_cfg1_reg_offset; TYPE_2__* reg_bits; void* phy_reg_offset; int /*<<< orphan*/  regmap; struct device* dev; } ;
struct device {TYPE_1__* of_node; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {scalar_t__ have_ana_cfg; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 TYPE_2__* FUNC8 (struct device*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ltq_rcu_usb2_priv *priv,
				 struct platform_device *pdev)
{
	struct device *dev = priv->dev;
	const __be32 *offset;

	priv->reg_bits = FUNC8(dev);

	priv->regmap = FUNC10(dev->of_node->parent);
	if (FUNC0(priv->regmap)) {
		FUNC4(dev, "Failed to lookup RCU regmap\n");
		return FUNC1(priv->regmap);
	}

	offset = FUNC9(dev->of_node, 0, NULL, NULL);
	if (!offset) {
		FUNC4(dev, "Failed to get RCU PHY reg offset\n");
		return -ENOENT;
	}
	priv->phy_reg_offset = FUNC3(*offset);

	if (priv->reg_bits->have_ana_cfg) {
		offset = FUNC9(dev->of_node, 1, NULL, NULL);
		if (!offset) {
			FUNC4(dev, "Failed to get RCU ANA CFG1 reg offset\n");
			return -ENOENT;
		}
		priv->ana_cfg1_reg_offset = FUNC3(*offset);
	}

	priv->phy_gate_clk = FUNC5(dev, "phy");
	if (FUNC0(priv->phy_gate_clk)) {
		FUNC4(dev, "Unable to get USB phy gate clk\n");
		return FUNC1(priv->phy_gate_clk);
	}

	priv->ctrl_reset = FUNC7(dev, "ctrl");
	if (FUNC0(priv->ctrl_reset)) {
		if (FUNC1(priv->ctrl_reset) != -EPROBE_DEFER)
			FUNC4(dev, "failed to get 'ctrl' reset\n");
		return FUNC1(priv->ctrl_reset);
	}

	priv->phy_reset = FUNC6(dev, "phy");

	return FUNC2(priv->phy_reset);
}