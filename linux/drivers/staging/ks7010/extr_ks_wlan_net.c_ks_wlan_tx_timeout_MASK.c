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
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_3__ {int /*<<< orphan*/  qtail; int /*<<< orphan*/  qhead; } ;
struct ks_wlan_private {TYPE_2__ nstats; TYPE_1__ tx_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ks_wlan_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static
void FUNC5(struct net_device *dev)
{
	struct ks_wlan_private *priv = FUNC1(dev);

	FUNC0(dev, "head(%d) tail(%d)!!\n", priv->tx_dev.qhead,
		   priv->tx_dev.qtail);
	if (!FUNC2(dev))
		FUNC3(dev);
	priv->nstats.tx_errors++;
	FUNC4(dev);
}