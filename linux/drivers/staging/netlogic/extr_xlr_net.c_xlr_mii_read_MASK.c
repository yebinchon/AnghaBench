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
struct xlr_net_priv {TYPE_1__* ndev; int /*<<< orphan*/  mii_addr; } ;
struct mii_bus {struct xlr_net_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct mii_bus *bus, int phy_addr, int regnum)
{
	struct xlr_net_priv *priv = bus->priv;
	int ret;

	ret =  FUNC1(priv->mii_addr, phy_addr, regnum);
	FUNC0(&priv->ndev->dev, "mii_read phy %d : %d [%x]\n",
		phy_addr, regnum, ret);
	return ret;
}