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
typedef  int u16 ;
struct rtllib_network {int beacon_interval; } ;
struct r8192_priv {TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct rtllib_network current_network; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATIMWND ; 
 int /*<<< orphan*/  BCN_DMATIME ; 
 int /*<<< orphan*/  BCN_DRV_EARLY_INT ; 
 int /*<<< orphan*/  BCN_ERR_THRESH ; 
 int /*<<< orphan*/  BCN_INTERVAL ; 
 int /*<<< orphan*/  BCN_TCFG ; 
 int BCN_TCFG_CW_SHIFT ; 
 int BCN_TCFG_IFS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

void FUNC5(struct net_device *dev)
{
	struct r8192_priv *priv = (struct r8192_priv *)FUNC4(dev);
	struct rtllib_network *net = &priv->rtllib->current_network;
	u16 BcnTimeCfg = 0;
	u16 BcnCW = 6;
	u16 BcnIFS = 0xf;

	FUNC0(dev);

	FUNC3(dev, ATIMWND, 2);

	FUNC3(dev, BCN_INTERVAL, net->beacon_interval);
	FUNC3(dev, BCN_DRV_EARLY_INT, 10);
	FUNC3(dev, BCN_DMATIME, 256);

	FUNC2(dev, BCN_ERR_THRESH, 100);

	BcnTimeCfg |= BcnCW<<BCN_TCFG_CW_SHIFT;
	BcnTimeCfg |= BcnIFS<<BCN_TCFG_IFS;
	FUNC3(dev, BCN_TCFG, BcnTimeCfg);
	FUNC1(dev);
}