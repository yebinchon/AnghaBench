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
typedef  scalar_t__ uint ;
struct dvobj_priv {TYPE_3__* padapters; } ;
struct TYPE_4__ {int notch_filter; } ;
struct TYPE_5__ {scalar_t__ (* hal_init ) (struct adapter*) ;} ;
struct adapter {TYPE_1__ registrypriv; TYPE_2__ HalFunc; } ;
struct TYPE_6__ {int hw_init_completed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_hal_init_c_ ; 
 struct dvobj_priv* FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (struct adapter*) ; 

uint FUNC10(struct adapter *padapter)
{
	uint status;
	struct dvobj_priv *dvobj = FUNC2(padapter);

	status = padapter->HalFunc.hal_init(padapter);

	if (status == _SUCCESS) {
		FUNC5(padapter);

		dvobj->padapters->hw_init_completed = true;

		if (padapter->registrypriv.notch_filter == 1)
			FUNC6(padapter, 1);

		FUNC7(padapter);

		FUNC8(dvobj->padapters);

		FUNC3(padapter);

		FUNC4(padapter);
	} else {
		dvobj->padapters->hw_init_completed = false;
		FUNC0("rtw_hal_init: hal__init fail\n");
	}

	FUNC1(_module_hal_init_c_, _drv_err_, ("-rtl871x_hal_init:status = 0x%x\n", status));

	return status;

}