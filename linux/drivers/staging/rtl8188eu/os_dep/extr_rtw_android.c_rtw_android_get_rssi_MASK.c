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
struct TYPE_4__ {char* ssid; } ;
struct TYPE_5__ {TYPE_1__ ssid; } ;
struct wlan_network {TYPE_2__ network; } ;
struct net_device {int dummy; } ;
struct mlme_priv {struct wlan_network cur_network; } ;
struct TYPE_6__ {int rssi; } ;
struct adapter {TYPE_3__ recvpriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  _FW_LINKED ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (char*,int,char*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *net, char *command,
				int total_len)
{
	struct adapter *padapter = (struct adapter *)FUNC1(net);
	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
	struct	wlan_network	*pcur_network = &pmlmepriv->cur_network;
	int bytes_written = 0;

	if (FUNC0(pmlmepriv, _FW_LINKED)) {
		bytes_written += FUNC2(&command[bytes_written], total_len,
					  "%s rssi %d",
					  pcur_network->network.ssid.ssid,
					  padapter->recvpriv.rssi);
	}
	return bytes_written;
}