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
struct xlr_net_priv {int phy_addr; int /*<<< orphan*/  pcs_addr; int /*<<< orphan*/  gpio_addr; int /*<<< orphan*/  serdes_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct xlr_net_priv *priv)
{
	int phy;

	FUNC1(priv->serdes_addr, 26, 0, 0x6DB0);
	FUNC1(priv->serdes_addr, 26, 1, 0xFFFF);
	FUNC1(priv->serdes_addr, 26, 2, 0xB6D0);
	FUNC1(priv->serdes_addr, 26, 3, 0x00FF);
	FUNC1(priv->serdes_addr, 26, 4, 0x0000);
	FUNC1(priv->serdes_addr, 26, 5, 0x0000);
	FUNC1(priv->serdes_addr, 26, 6, 0x0005);
	FUNC1(priv->serdes_addr, 26, 7, 0x0001);
	FUNC1(priv->serdes_addr, 26, 8, 0x0000);
	FUNC1(priv->serdes_addr, 26, 9, 0x0000);
	FUNC1(priv->serdes_addr, 26, 10, 0x0000);

	/* program  GPIO values for serdes init parameters */
	FUNC0(priv->gpio_addr, 0x20, 0x7e6802);
	FUNC0(priv->gpio_addr, 0x10, 0x7104);

	FUNC0(priv->gpio_addr, 0x22, 0x7e6802);
	FUNC0(priv->gpio_addr, 0x21, 0x7104);

	/* enable autoneg - more magic */
	phy = priv->phy_addr % 4 + 27;
	FUNC1(priv->pcs_addr, phy, 0, 0x1000);
	FUNC1(priv->pcs_addr, phy, 0, 0x0200);
}