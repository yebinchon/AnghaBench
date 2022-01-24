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
struct TYPE_4__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct TYPE_3__ {scalar_t__ flags; scalar_t__ length; } ;
union iwreq_data {TYPE_2__ ap_addr; TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct ks_wlan_private {unsigned int connect_status; scalar_t__ dev_state; scalar_t__ scan_ind_count; struct net_device* net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 scalar_t__ DEVICE_STATE_READY ; 
 scalar_t__ DEVICE_STATE_SLEEP ; 
 unsigned int DISCONNECT_STATUS ; 
 unsigned int FORCE_DISCONNECT ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 int /*<<< orphan*/  SME_STOP_CONFIRM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ks_wlan_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC7(struct ks_wlan_private *priv)
{
	unsigned int tmp = 0;
	unsigned int old_status = priv->connect_status;
	struct net_device *netdev = priv->net_dev;
	union iwreq_data wrqu0;

	if (priv->dev_state == DEVICE_STATE_SLEEP)
		priv->dev_state = DEVICE_STATE_READY;

	/* disconnect indication */
	if (FUNC2(priv->connect_status)) {
		FUNC5(netdev);
		tmp = FORCE_DISCONNECT & priv->connect_status;
		priv->connect_status = tmp | DISCONNECT_STATUS;
		FUNC4(netdev, "IWEVENT: disconnect\n");

		wrqu0.data.length = 0;
		wrqu0.data.flags = 0;
		wrqu0.ap_addr.sa_family = ARPHRD_ETHER;
		if (FUNC3(priv->connect_status) &&
		    FUNC2(old_status)) {
			FUNC0(wrqu0.ap_addr.sa_data);
			FUNC4(netdev, "IWEVENT: disconnect\n");
			FUNC6(netdev, SIOCGIWAP, &wrqu0, NULL);
		}
		priv->scan_ind_count = 0;
	}

	FUNC1(priv, SME_STOP_CONFIRM);
}