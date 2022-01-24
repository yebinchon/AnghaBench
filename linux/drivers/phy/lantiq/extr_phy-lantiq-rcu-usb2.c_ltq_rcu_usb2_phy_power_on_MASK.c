#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct phy {int dummy; } ;
struct ltq_rcu_usb2_priv {int /*<<< orphan*/  phy_gate_clk; int /*<<< orphan*/  phy_reset; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct ltq_rcu_usb2_priv* FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct phy *phy)
{
	struct ltq_rcu_usb2_priv *priv = FUNC2(phy);
	struct device *dev = priv->dev;
	int ret;

	FUNC3(priv->phy_reset);

	ret = FUNC0(priv->phy_gate_clk);
	if (ret)
		FUNC1(dev, "failed to enable PHY gate\n");

	return ret;
}