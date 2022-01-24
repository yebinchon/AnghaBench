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
struct rereg_nd_name_data {struct net_device* old_pnetdev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac_addr; } ;
struct adapter {TYPE_1__ eeprompriv; struct rereg_nd_name_data rereg_nd_name_priv; struct net_device* pnetdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_hci_intfs_c_ ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct net_device* FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

int FUNC13(struct adapter *padapter, const char *ifname)
{
	struct net_device *pnetdev;
	struct net_device *cur_pnetdev;
	struct rereg_nd_name_data *rereg_priv;
	int ret;

	if (!padapter)
		goto error;

	cur_pnetdev = padapter->pnetdev;
	rereg_priv = &padapter->rereg_nd_name_priv;

	/* free the old_pnetdev */
	if (rereg_priv->old_pnetdev) {
		FUNC4(rereg_priv->old_pnetdev);
		rereg_priv->old_pnetdev = NULL;
	}

	if (!FUNC8())
		FUNC11(cur_pnetdev);
	else
		FUNC12(cur_pnetdev);

	rereg_priv->old_pnetdev = cur_pnetdev;

	pnetdev = FUNC9(padapter);
	if (!pnetdev)  {
		ret = -1;
		goto error;
	}

	FUNC1(pnetdev, FUNC3(FUNC2(padapter)));

	FUNC10(pnetdev, ifname);

	FUNC5(pnetdev->dev_addr, padapter->eeprompriv.mac_addr, ETH_ALEN);

	if (!FUNC8())
		ret = FUNC6(pnetdev);
	else
		ret = FUNC7(pnetdev);

	if (ret != 0) {
		FUNC0(_module_hci_intfs_c_, _drv_err_, ("register_netdev() failed\n"));
		goto error;
	}

	return 0;

error:

	return -1;

}