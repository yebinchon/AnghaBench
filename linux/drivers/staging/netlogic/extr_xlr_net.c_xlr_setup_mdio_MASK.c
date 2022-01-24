#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xlr_net_priv {int port_id; int phy_addr; TYPE_1__* mii_bus; int /*<<< orphan*/  base_addr; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {char* name; int phy_mask; int /*<<< orphan*/  id; int /*<<< orphan*/ * parent; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct xlr_net_priv* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  R_MII_MGMT_CONFIG ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC6 (struct xlr_net_priv*) ; 
 int /*<<< orphan*/  xlr_mii_read ; 
 int /*<<< orphan*/  xlr_mii_write ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct xlr_net_priv *priv,
			  struct platform_device *pdev)
{
	int err;

	priv->mii_bus = FUNC0();
	if (!priv->mii_bus) {
		FUNC3("mdiobus alloc failed\n");
		return -ENOMEM;
	}

	priv->mii_bus->priv = priv;
	priv->mii_bus->name = "xlr-mdio";
	FUNC5(priv->mii_bus->id, MII_BUS_ID_SIZE, "%s-%d",
		 priv->mii_bus->name, priv->port_id);
	priv->mii_bus->read = xlr_mii_read;
	priv->mii_bus->write = xlr_mii_write;
	priv->mii_bus->parent = &pdev->dev;

	/* Scan only the enabled address */
	priv->mii_bus->phy_mask = ~(1 << priv->phy_addr);

	/* setting clock divisor to 54 */
	FUNC7(priv->base_addr, R_MII_MGMT_CONFIG, 0x7);

	err = FUNC2(priv->mii_bus);
	if (err) {
		FUNC1(priv->mii_bus);
		FUNC3("mdio bus registration failed\n");
		return err;
	}

	FUNC4("Registered mdio bus id : %s\n", priv->mii_bus->id);
	err = FUNC6(priv);
	if (err) {
		FUNC1(priv->mii_bus);
		return err;
	}
	return 0;
}