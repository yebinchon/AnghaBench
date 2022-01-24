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
typedef  int /*<<< orphan*/  u8 ;
struct sdio_device_id {int dummy; } ;
struct sdio_data {TYPE_1__* func; } ;
struct net_device {int dummy; } ;
struct dvobj_priv {struct adapter* padapters; struct adapter* if1; struct sdio_data intf_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  mac_addr; } ;
struct adapter {int bDriverStopped; int /*<<< orphan*/  rtw_wdev; scalar_t__ HalData; int /*<<< orphan*/  hw_init_completed; int /*<<< orphan*/  bup; int /*<<< orphan*/  bSurpriseRemoved; TYPE_2__ eeprompriv; int /*<<< orphan*/ * intf_free_irq; int /*<<< orphan*/ * intf_alloc_irq; int /*<<< orphan*/ * intf_deinit; int /*<<< orphan*/ * intf_init; int /*<<< orphan*/ * intf_stop; int /*<<< orphan*/ * intf_start; scalar_t__ iface_id; struct dvobj_priv* dvobj; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int _FAIL ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_hci_intfs_c_ ; 
 int /*<<< orphan*/  FUNC3 (struct dvobj_priv*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 
 int FUNC11 (struct adapter*) ; 
 int FUNC12 (struct adapter*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC13 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct adapter* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sd_intf_start ; 
 int /*<<< orphan*/  sd_intf_stop ; 
 int /*<<< orphan*/  sdio_alloc_irq ; 
 int /*<<< orphan*/  sdio_deinit ; 
 int /*<<< orphan*/  sdio_free_irq ; 
 int /*<<< orphan*/  sdio_init ; 
 int /*<<< orphan*/  sdio_set_intf_ops ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 struct adapter* FUNC21 (int) ; 

__attribute__((used)) static struct adapter *FUNC22(struct dvobj_priv *dvobj, const struct sdio_device_id  *pdid)
{
	int status = _FAIL;
	struct net_device *pnetdev;
	struct adapter *padapter = NULL;
	struct sdio_data *psdio = &dvobj->intf_data;

	padapter = FUNC21(sizeof(*padapter));
	if (padapter == NULL) {
		goto exit;
	}

	padapter->dvobj = dvobj;
	dvobj->if1 = padapter;

	padapter->bDriverStopped =true;

	dvobj->padapters = padapter;
	padapter->iface_id = 0;

	/* 3 1. init network device data */
	pnetdev = FUNC13(padapter);
	if (!pnetdev)
		goto free_adapter;

	FUNC2(pnetdev, FUNC3(dvobj));

	padapter = FUNC15(pnetdev);

	FUNC17(padapter, FUNC3(dvobj));

	/* 3 3. init driver special setting, interface, OS and hardware relative */

	/* 4 3.1 set hardware operation functions */
	FUNC16(padapter);


	/* 3 5. initialize Chip version */
	padapter->intf_start = &sd_intf_start;
	padapter->intf_stop = &sd_intf_stop;

	padapter->intf_init = &sdio_init;
	padapter->intf_deinit = &sdio_deinit;
	padapter->intf_alloc_irq = &sdio_alloc_irq;
	padapter->intf_free_irq = &sdio_free_irq;

	if (FUNC12(padapter, sdio_set_intf_ops) == _FAIL) {
		FUNC1(_module_hci_intfs_c_, _drv_err_,
			("rtw_drv_init: Can't init io_priv\n"));
		goto free_hal_data;
	}

	FUNC10(padapter);

	FUNC7(padapter);

	FUNC4((void *) padapter);

	/* 3 6. read efuse/eeprom data */
	FUNC9(padapter);

	/* 3 7. init driver common data */
	if (FUNC11(padapter) == _FAIL) {
		FUNC1(_module_hci_intfs_c_, _drv_err_,
			 ("rtw_drv_init: Initialize driver software resource Failed!\n"));
		goto free_hal_data;
	}

	/* 3 8. get WLan MAC address */
	/*  set mac addr */
	FUNC14(&psdio->func->dev, padapter->eeprompriv.mac_addr);

	FUNC8(padapter);

	FUNC0("bDriverStopped:%d, bSurpriseRemoved:%d, bup:%d, hw_init_completed:%d\n"
		, padapter->bDriverStopped
		, padapter->bSurpriseRemoved
		, padapter->bup
		, padapter->hw_init_completed
	);

	status = _SUCCESS;

free_hal_data:
	if (status != _SUCCESS && padapter->HalData)
		FUNC5(padapter->HalData);

	if (status != _SUCCESS) {
		FUNC19(padapter->rtw_wdev);
		FUNC18(padapter->rtw_wdev);
	}

free_adapter:
	if (status != _SUCCESS) {
		if (pnetdev)
			FUNC6(pnetdev);
		else
			FUNC20((u8 *)padapter);
		padapter = NULL;
	}
exit:
	return padapter;
}