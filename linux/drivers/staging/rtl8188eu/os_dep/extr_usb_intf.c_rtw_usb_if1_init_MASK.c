#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int needs_remote_wakeup; int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct hal_data_8188e {int dummy; } ;
struct dvobj_priv {TYPE_2__* pusbdev; struct adapter* if1; } ;
struct TYPE_8__ {int /*<<< orphan*/  mac_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  ifname; scalar_t__ monitor_enable; } ;
struct TYPE_5__ {scalar_t__ bSupportRemoteWakeup; } ;
struct adapter {int bDriverStopped; int /*<<< orphan*/  HalData; int /*<<< orphan*/  hw_init_completed; int /*<<< orphan*/  bup; int /*<<< orphan*/  bSurpriseRemoved; TYPE_4__ eeprompriv; TYPE_3__ registrypriv; TYPE_1__ pwrctrlpriv; struct net_device* pmondev; int /*<<< orphan*/  hw_init_mutex; struct dvobj_priv* dvobj; } ;
struct TYPE_6__ {int do_remote_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int _FAIL ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_hci_intfs_c_ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dvobj_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ FUNC12 (struct net_device*) ; 
 struct net_device* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC16 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*) ; 
 int FUNC18 (struct adapter*) ; 
 struct net_device* FUNC19 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC22 (struct net_device*) ; 
 scalar_t__ FUNC23 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC24 (struct adapter*) ; 
 struct adapter* FUNC25 (int) ; 

__attribute__((used)) static struct adapter *FUNC26(struct dvobj_priv *dvobj,
	struct usb_interface *pusb_intf, const struct usb_device_id *pdid)
{
	struct adapter *padapter = NULL;
	struct net_device *pnetdev = NULL;
	struct net_device *pmondev;
	int status = _FAIL;

	padapter = FUNC25(sizeof(*padapter));
	if (!padapter)
		goto exit;
	padapter->dvobj = dvobj;
	dvobj->if1 = padapter;

	padapter->bDriverStopped = true;
	FUNC9(&padapter->hw_init_mutex);

	pnetdev = FUNC19(padapter);
	if (!pnetdev)
		goto free_adapter;
	FUNC2(pnetdev, FUNC5(dvobj));
	padapter = FUNC22(pnetdev);

	if (padapter->registrypriv.monitor_enable) {
		pmondev = FUNC13();
		if (!pmondev)
			FUNC10(pnetdev, "Failed to initialize monitor interface");
		padapter->pmondev = pmondev;
	}

	padapter->HalData = FUNC7(sizeof(struct hal_data_8188e), GFP_KERNEL);
	if (!padapter->HalData) {
		FUNC0("Failed to allocate memory for HAL data\n");
		goto free_adapter;
	}

	/* step read_chip_version */
	FUNC17(padapter);

	/* step usb endpoint mapping */
	FUNC15(padapter);

	/* step read efuse/eeprom data and get mac_addr */
	FUNC16(padapter);

	/* step 5. */
	if (FUNC18(padapter) == _FAIL) {
		FUNC1(_module_hci_intfs_c_, _drv_err_,
			 ("Initialize driver software resource Failed!\n"));
		goto free_hal_data;
	}

#ifdef CONFIG_PM
	if (padapter->pwrctrlpriv.bSupportRemoteWakeup) {
		dvobj->pusbdev->do_remote_wakeup = 1;
		pusb_intf->needs_remote_wakeup = 1;
		device_init_wakeup(&pusb_intf->dev, 1);
		pr_debug("\n  padapter->pwrctrlpriv.bSupportRemoteWakeup~~~~~~\n");
		pr_debug("\n  padapter->pwrctrlpriv.bSupportRemoteWakeup~~~[%d]~~~\n",
			device_may_wakeup(&pusb_intf->dev));
	}
#endif

	/* 2012-07-11 Move here to prevent the 8723AS-VAU BT auto
	 * suspend influence */
	if (FUNC23(pusb_intf) < 0)
		FUNC11("can't get autopm:\n");

	/*  alloc dev name after read efuse. */
	FUNC20(pnetdev, padapter->registrypriv.ifname);
	FUNC21(padapter->eeprompriv.mac_addr);
	FUNC8(pnetdev->dev_addr, padapter->eeprompriv.mac_addr, ETH_ALEN);
	FUNC11("MAC Address from pnetdev->dev_addr =  %pM\n",
		pnetdev->dev_addr);

	/* step 6. Tell the network stack we exist */
	if (FUNC12(pnetdev) != 0) {
		FUNC1(_module_hci_intfs_c_, _drv_err_, ("register_netdev() failed\n"));
		goto free_hal_data;
	}

	FUNC11("bDriverStopped:%d, bSurpriseRemoved:%d, bup:%d, hw_init_completed:%d\n"
		, padapter->bDriverStopped
		, padapter->bSurpriseRemoved
		, padapter->bup
		, padapter->hw_init_completed
	);

	status = _SUCCESS;

free_hal_data:
	if (status != _SUCCESS)
		FUNC6(padapter->HalData);
free_adapter:
	if (status != _SUCCESS) {
		if (pnetdev)
			FUNC14(pnetdev);
		else
			FUNC24(padapter);
		padapter = NULL;
	}
exit:
	return padapter;
}