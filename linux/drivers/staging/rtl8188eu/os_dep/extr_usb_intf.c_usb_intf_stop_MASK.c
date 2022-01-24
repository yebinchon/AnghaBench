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
struct adapter {int /*<<< orphan*/  bSurpriseRemoved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_hci_intfs_c_ ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 

void FUNC3(struct adapter *padapter)
{
	FUNC0(_module_hci_intfs_c_, _drv_err_, ("+usb_intf_stop\n"));

	/* disable_hw_interrupt */
	if (!padapter->bSurpriseRemoved) {
		/* device still exists, so driver can do i/o operation */
		/* TODO: */
		FUNC0(_module_hci_intfs_c_, _drv_err_,
			 ("SurpriseRemoved == false\n"));
	}

	/* cancel in irp */
	FUNC1(padapter);

	/* cancel out irp */
	FUNC2(padapter);

	/* todo:cancel other irps */

	FUNC0(_module_hci_intfs_c_, _drv_err_, ("-usb_intf_stop\n"));
}