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
struct phy_g12a_usb3_pcie_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  PHY_R4 ; 
 int /*<<< orphan*/  PHY_R4_PHY_CR_READ ; 
 int /*<<< orphan*/  PHY_R5 ; 
 unsigned int PHY_R5_PHY_CR_ACK ; 
 int /*<<< orphan*/  PHY_R5_PHY_CR_DATA_OUT ; 
 int FUNC1 (struct phy_g12a_usb3_pcie_priv*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *context, unsigned int addr,
					  unsigned int *data)
{
	struct phy_g12a_usb3_pcie_priv *priv = context;
	unsigned int val;
	int ret;

	ret = FUNC1(priv, addr);
	if (ret)
		return ret;

	FUNC3(priv->regmap, PHY_R4, 0);
	FUNC3(priv->regmap, PHY_R4, PHY_R4_PHY_CR_READ);

	ret = FUNC2(priv->regmap, PHY_R5, val,
				       (val & PHY_R5_PHY_CR_ACK),
				       5, 1000);
	if (ret)
		return ret;

	*data = FUNC0(PHY_R5_PHY_CR_DATA_OUT, val);

	FUNC3(priv->regmap, PHY_R4, 0);

	ret = FUNC2(priv->regmap, PHY_R5, val,
				       !(val & PHY_R5_PHY_CR_ACK),
				       5, 1000);
	if (ret)
		return ret;

	return 0;
}