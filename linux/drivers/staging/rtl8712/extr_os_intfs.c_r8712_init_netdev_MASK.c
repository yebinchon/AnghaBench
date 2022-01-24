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
struct net_device {struct iw_handler_def* wireless_handlers; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; } ;
struct iw_handler_def {int dummy; } ;
struct _adapter {scalar_t__ pid; struct net_device* pnetdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 struct net_device* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifname ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,struct net_device*) ; 
 struct _adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  r871x_handlers_def ; 
 int /*<<< orphan*/  rtl8712_netdev_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

struct net_device *FUNC7(void)
{
	struct _adapter *padapter;
	struct net_device *pnetdev;

	pnetdev = FUNC0(sizeof(struct _adapter));
	if (!pnetdev)
		return NULL;
	if (FUNC1(pnetdev, ifname) < 0) {
		FUNC6(ifname, "wlan%d");
		FUNC1(pnetdev, ifname);
	}
	padapter = FUNC3(pnetdev);
	padapter->pnetdev = pnetdev;
	FUNC5("r8712u: register rtl8712_netdev_ops to netdev_ops\n");
	pnetdev->netdev_ops = &rtl8712_netdev_ops;
	pnetdev->watchdog_timeo = HZ; /* 1 second timeout */
	pnetdev->wireless_handlers = (struct iw_handler_def *)
				     &r871x_handlers_def;
	FUNC2(padapter, pnetdev);
	FUNC4(pnetdev);
	padapter->pid = 0;  /* Initial the PID value used for HW PBC.*/
	return pnetdev;
}