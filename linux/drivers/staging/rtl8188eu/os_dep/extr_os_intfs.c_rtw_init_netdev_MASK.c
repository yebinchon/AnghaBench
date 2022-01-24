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
struct TYPE_2__ {int /*<<< orphan*/ * type; } ;
struct net_device {int watchdog_timeo; struct iw_handler_def* wireless_handlers; int /*<<< orphan*/ * netdev_ops; TYPE_1__ dev; } ;
struct iw_handler_def {int dummy; } ;
struct adapter {struct net_device* pnetdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_os_intfs_c_ ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct net_device*) ; 
 struct net_device* FUNC3 (void*) ; 
 int /*<<< orphan*/  rtw_handlers_def ; 
 int /*<<< orphan*/  rtw_netdev_ops ; 
 struct adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  wlan_type ; 

struct net_device *FUNC5(struct adapter *old_padapter)
{
	struct adapter *padapter;
	struct net_device *pnetdev = NULL;

	FUNC1(_module_os_intfs_c_, _drv_info_, ("+init_net_dev\n"));

	if (old_padapter)
		pnetdev = FUNC3((void *)old_padapter);

	if (!pnetdev)
		return NULL;

	pnetdev->dev.type = &wlan_type;
	padapter = FUNC4(pnetdev);
	padapter->pnetdev = pnetdev;
	FUNC0("register rtw_netdev_ops to netdev_ops\n");
	pnetdev->netdev_ops = &rtw_netdev_ops;
	pnetdev->watchdog_timeo = HZ * 3; /* 3 second timeout */
	pnetdev->wireless_handlers = (struct iw_handler_def *)&rtw_handlers_def;

	FUNC2(padapter, pnetdev);

	return pnetdev;
}