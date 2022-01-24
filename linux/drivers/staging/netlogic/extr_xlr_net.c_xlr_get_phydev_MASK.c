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
struct xlr_net_priv {int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  mii_bus; } ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 struct phy_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct phy_device *FUNC1(struct xlr_net_priv *priv)
{
	return FUNC0(priv->mii_bus, priv->phy_addr);
}