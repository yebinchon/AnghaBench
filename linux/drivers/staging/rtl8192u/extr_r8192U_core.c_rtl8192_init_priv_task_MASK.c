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
struct r8192_priv {int /*<<< orphan*/  irq_rx_tasklet; int /*<<< orphan*/  qos_activate; int /*<<< orphan*/  initialgain_operate_wq; int /*<<< orphan*/  update_beacon_wq; int /*<<< orphan*/  rfpath_check_wq; int /*<<< orphan*/  txpower_tracking_wq; int /*<<< orphan*/  watch_dog_wq; int /*<<< orphan*/  reset_wq; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InitialGainOperateWorkItemCallBack ; 
 int /*<<< orphan*/  dm_rf_pathcheck_workitemcallback ; 
 int /*<<< orphan*/  dm_txpower_trackingcallback ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 scalar_t__ rtl8192_irq_rx_tasklet ; 
 int /*<<< orphan*/  rtl8192_qos_activate ; 
 int /*<<< orphan*/  rtl8192_restart ; 
 int /*<<< orphan*/  rtl8192_update_beacon ; 
 int /*<<< orphan*/  rtl819x_watchdog_wqcallback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC2(dev);


	FUNC1(&priv->reset_wq, rtl8192_restart);

	FUNC0(&priv->watch_dog_wq,
			  rtl819x_watchdog_wqcallback);
	FUNC0(&priv->txpower_tracking_wq,
			  dm_txpower_trackingcallback);
	FUNC0(&priv->rfpath_check_wq,
			  dm_rf_pathcheck_workitemcallback);
	FUNC0(&priv->update_beacon_wq,
			  rtl8192_update_beacon);
	FUNC0(&priv->initialgain_operate_wq,
			  InitialGainOperateWorkItemCallBack);
	FUNC1(&priv->qos_activate, rtl8192_qos_activate);

	FUNC3(&priv->irq_rx_tasklet,
		     (void(*)(unsigned long))rtl8192_irq_rx_tasklet,
		     (unsigned long)priv);
}