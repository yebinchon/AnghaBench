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
struct sdio_func {int dummy; } ;
struct sdio_device_id {int dummy; } ;
struct dvobj_priv {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int _FAIL ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_hci_intfs_c_ ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 struct adapter* FUNC6 (struct dvobj_priv*,struct sdio_device_id const*) ; 
 int FUNC7 (struct dvobj_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*) ; 
 struct dvobj_priv* FUNC9 (struct sdio_func*) ; 

__attribute__((used)) static int FUNC10(
	struct sdio_func *func,
	const struct sdio_device_id *id)
{
	int status = _FAIL;
	struct adapter *if1 = NULL, *if2 = NULL;
	struct dvobj_priv *dvobj;

	dvobj = FUNC9(func);
	if (dvobj == NULL) {
		FUNC1(_module_hci_intfs_c_, _drv_err_, ("initialize device object priv Failed!\n"));
		goto exit;
	}

	if1 = FUNC6(dvobj, id);
	if (if1 == NULL) {
		FUNC0("rtw_init_primarystruct adapter Failed!\n");
		goto free_dvobj;
	}

	/* dev_alloc_name && register_netdev */
	status = FUNC3(if1);
	if (status != _SUCCESS)
		goto free_if2;

	if (FUNC7(dvobj) != _SUCCESS)
		goto free_if2;

#ifdef	CONFIG_GPIO_WAKEUP
	gpio_hostwakeup_alloc_irq(if1);
#endif

	FUNC1(_module_hci_intfs_c_, _drv_err_, ("-871x_drv - drv_init, success!\n"));

	FUNC4();
	status = _SUCCESS;

free_if2:
	if (status != _SUCCESS && if2) {
	}
	if (status != _SUCCESS && if1) {
		FUNC5(if1);
	}
free_dvobj:
	if (status != _SUCCESS)
		FUNC8(func);
exit:
	return status == _SUCCESS?0:-ENODEV;
}