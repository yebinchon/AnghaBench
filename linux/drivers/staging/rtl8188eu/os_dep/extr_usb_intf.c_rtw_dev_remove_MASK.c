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
struct usb_interface {int /*<<< orphan*/  unregistering; } ;
struct dvobj_priv {struct adapter* if1; } ;
struct adapter {int bSurpriseRemoved; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  PS_MODE_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_hci_intfs_c_ ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*) ; 
 struct dvobj_priv* FUNC7 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *pusb_intf)
{
	struct dvobj_priv *dvobj = FUNC7(pusb_intf);
	struct adapter *padapter = dvobj->if1;

	FUNC2("+rtw_dev_remove\n");
	FUNC1(_module_hci_intfs_c_, _drv_err_, ("+dev_remove()\n"));

	if (!pusb_intf->unregistering)
		padapter->bSurpriseRemoved = true;

	FUNC3(padapter, IPS_NONE);
	FUNC4(padapter, PS_MODE_ACTIVE);

	FUNC0(padapter);

	FUNC5(padapter);

	FUNC6(pusb_intf);

	FUNC1(_module_hci_intfs_c_, _drv_err_, ("-dev_remove()\n"));
	FUNC2("-r871xu_dev_remove, done\n");
}