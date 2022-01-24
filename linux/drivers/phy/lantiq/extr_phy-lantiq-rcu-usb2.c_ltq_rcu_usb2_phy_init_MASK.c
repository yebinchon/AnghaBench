#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct phy {int dummy; } ;
struct ltq_rcu_usb2_priv {TYPE_1__* reg_bits; int /*<<< orphan*/  phy_reg_offset; int /*<<< orphan*/  regmap; int /*<<< orphan*/  ana_cfg1_reg_offset; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_endianness; int /*<<< orphan*/  slave_endianness; int /*<<< orphan*/  hostmode; scalar_t__ have_ana_cfg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RCU_CFG1_DIS_THR_MASK ; 
 int RCU_CFG1_DIS_THR_SHIFT ; 
 int RCU_CFG1_TX_PEE ; 
 struct ltq_rcu_usb2_priv* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct ltq_rcu_usb2_priv *priv = FUNC1(phy);

	if (priv->reg_bits->have_ana_cfg) {
		FUNC2(priv->regmap, priv->ana_cfg1_reg_offset,
			RCU_CFG1_TX_PEE, RCU_CFG1_TX_PEE);
		FUNC2(priv->regmap, priv->ana_cfg1_reg_offset,
			RCU_CFG1_DIS_THR_MASK, 7 << RCU_CFG1_DIS_THR_SHIFT);
	}

	/* Configure core to host mode */
	FUNC2(priv->regmap, priv->phy_reg_offset,
			   FUNC0(priv->reg_bits->hostmode), 0);

	/* Select DMA endianness (Host-endian: big-endian) */
	FUNC2(priv->regmap, priv->phy_reg_offset,
		FUNC0(priv->reg_bits->slave_endianness), 0);
	FUNC2(priv->regmap, priv->phy_reg_offset,
		FUNC0(priv->reg_bits->host_endianness),
		FUNC0(priv->reg_bits->host_endianness));

	return 0;
}