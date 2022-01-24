#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct TYPE_5__ {scalar_t__ flags; scalar_t__ length; } ;
union iwreq_data {TYPE_3__ ap_addr; TYPE_2__ data; } ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct link_ap_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  confirm_wait; int /*<<< orphan*/  snooze_guard; } ;
struct ks_wlan_private {unsigned int connect_status; scalar_t__ scan_ind_count; struct net_device* net_dev; TYPE_1__ psstatus; scalar_t__ rxp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  CONNECT_STATUS ; 
 int /*<<< orphan*/  DISCONNECT_STATUS ; 
 unsigned int FORCE_DISCONNECT ; 
#define  RESULT_CONNECT 129 
#define  RESULT_DISCONNECT 128 
 int /*<<< orphan*/  SIOCGIWAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_wlan_private*,struct link_ap_info*) ; 
 int FUNC3 (struct ks_wlan_private*) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC11(struct ks_wlan_private *priv)
{
	u16 connect_code;
	unsigned int tmp = 0;
	unsigned int old_status = priv->connect_status;
	struct net_device *netdev = priv->net_dev;
	union iwreq_data wrqu0;

	connect_code = FUNC3(priv);

	switch (connect_code) {
	case RESULT_CONNECT:
		if (!(priv->connect_status & FORCE_DISCONNECT))
			FUNC9(netdev);
		tmp = FORCE_DISCONNECT & priv->connect_status;
		priv->connect_status = tmp + CONNECT_STATUS;
		break;
	case RESULT_DISCONNECT:
		FUNC8(netdev);
		tmp = FORCE_DISCONNECT & priv->connect_status;
		priv->connect_status = tmp + DISCONNECT_STATUS;
		break;
	default:
		FUNC7(priv->net_dev, "unknown connect_code=%d :: scan_ind_count=%d\n",
			   connect_code, priv->scan_ind_count);
		FUNC8(netdev);
		tmp = FORCE_DISCONNECT & priv->connect_status;
		priv->connect_status = tmp + DISCONNECT_STATUS;
		break;
	}

	FUNC2(priv, (struct link_ap_info *)priv->rxp);
	if (FUNC4(priv->connect_status) &&
	    FUNC5(old_status)) {
		/* for power save */
		FUNC0(&priv->psstatus.snooze_guard, 0);
		FUNC0(&priv->psstatus.confirm_wait, 0);
	}
	FUNC6(priv);

	wrqu0.data.length = 0;
	wrqu0.data.flags = 0;
	wrqu0.ap_addr.sa_family = ARPHRD_ETHER;
	if (FUNC5(priv->connect_status) &&
	    FUNC4(old_status)) {
		FUNC1(wrqu0.ap_addr.sa_data);
		FUNC7(priv->net_dev, "disconnect :: scan_ind_count=%d\n",
			   priv->scan_ind_count);
		FUNC10(netdev, SIOCGIWAP, &wrqu0, NULL);
	}
	priv->scan_ind_count = 0;
}