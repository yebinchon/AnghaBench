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
struct net_device {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct ieee_param {int* sta_addr; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WIFI_AP_STATE ; 
 int FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ieee_param *param, int len)
{
	struct adapter *padapter = (struct adapter *)FUNC2(dev);
	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);

	if (FUNC0(pmlmepriv, WIFI_AP_STATE) != true)
		return -EINVAL;

	if (param->sta_addr[0] == 0xff && param->sta_addr[1] == 0xff &&
	    param->sta_addr[2] == 0xff && param->sta_addr[3] == 0xff &&
	    param->sta_addr[4] == 0xff && param->sta_addr[5] == 0xff) {
		return -EINVAL;
	}

	FUNC1(padapter, param->sta_addr);
	return 0;

}