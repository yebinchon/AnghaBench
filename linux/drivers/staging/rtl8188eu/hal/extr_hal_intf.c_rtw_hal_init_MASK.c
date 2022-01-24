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
struct TYPE_2__ {int notch_filter; } ;
struct adapter {int hw_init_completed; TYPE_1__ registrypriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_hal_init_c_ ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int) ; 

uint FUNC4(struct adapter *adapt)
{
	uint status = _SUCCESS;

	adapt->hw_init_completed = false;

	status = FUNC2(adapt);

	if (status == _SUCCESS) {
		adapt->hw_init_completed = true;

		if (adapt->registrypriv.notch_filter == 1)
			FUNC3(adapt, 1);
	} else {
		adapt->hw_init_completed = false;
		FUNC0("rtw_hal_init: hal__init fail\n");
	}

	FUNC1(_module_hal_init_c_, _drv_err_,
		 ("-rtl871x_hal_init:status=0x%x\n", status));

	return status;
}