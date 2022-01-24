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
typedef  scalar_t__ uint ;
struct pwrctrl_priv {int bips_processing; scalar_t__ ps_flag; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dynamic_chk_timer; } ;
struct adapter {int bup; int net_closed; int bDriverStopped; int bSurpriseRemoved; struct pwrctrl_priv pwrctrlpriv; TYPE_1__ mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  LED_CTL_NO_LINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ _FAIL ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_os_intfs_c_ ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*) ; 
 scalar_t__ FUNC12 (struct adapter*) ; 
 scalar_t__ FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct pwrctrl_priv*) ; 
 int FUNC16 (struct adapter*) ; 

__attribute__((used)) static int FUNC17(struct net_device *pnetdev)
{
	uint status;
	int err;
	struct adapter *padapter = (struct adapter *)FUNC13(pnetdev);
	struct pwrctrl_priv *pwrctrlpriv = &padapter->pwrctrlpriv;

	FUNC1(_module_os_intfs_c_, _drv_info_, ("+88eu_drv - dev_open\n"));
	FUNC0("+88eu_drv - drv_open, bup =%d\n", padapter->bup);

	if (pwrctrlpriv->ps_flag) {
		padapter->net_closed = false;
		goto netdev_open_normal_process;
	}

	if (!padapter->bup) {
		padapter->bDriverStopped = false;
		padapter->bSurpriseRemoved = false;

		status = FUNC12(padapter);
		if (status == _FAIL) {
			FUNC1(_module_os_intfs_c_, _drv_err_, ("rtl88eu_hal_init(): Can't init h/w!\n"));
			goto netdev_open_error;
		}

		FUNC10("MAC Address = %pM\n", pnetdev->dev_addr);

		err = FUNC16(padapter);
		if (err) {
			FUNC10("Initialize driver software resource Failed!\n");
			goto netdev_open_error;
		}

		if (FUNC2(padapter) == _FAIL) {
			FUNC10("can't init mlme_ext_priv\n");
			goto netdev_open_error;
		}
		FUNC11(padapter);

		FUNC3(padapter, LED_CTL_NO_LINK);

		padapter->bup = true;
	}
	padapter->net_closed = false;

	FUNC4(&padapter->mlmepriv.dynamic_chk_timer,
		  jiffies + FUNC5(2000));

	padapter->pwrctrlpriv.bips_processing = false;
	FUNC15(&padapter->pwrctrlpriv);

	if (!FUNC14(pnetdev))
		FUNC7(pnetdev);
	else
		FUNC9(pnetdev);

netdev_open_normal_process:
	FUNC1(_module_os_intfs_c_, _drv_info_, ("-88eu_drv - dev_open\n"));
	FUNC0("-88eu_drv - drv_open, bup =%d\n", padapter->bup);
	return 0;

netdev_open_error:
	padapter->bup = false;
	FUNC6(pnetdev);
	FUNC8(pnetdev);
	FUNC1(_module_os_intfs_c_, _drv_err_, ("-88eu_drv - dev_open, fail!\n"));
	FUNC0("-88eu_drv - drv_open fail, bup =%d\n", padapter->bup);
	return -1;
}