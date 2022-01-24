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
struct xmit_frame {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  core_tx_enqueue; } ;
struct adapter {TYPE_1__ tx_logs; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ _FAIL ; 
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_rtl871x_xmit_c_ ; 
 scalar_t__ FUNC2 (struct adapter*,struct xmit_frame*) ; 

s32 FUNC3(struct adapter *padapter, struct xmit_frame *pxmitframe)
{
	FUNC0(padapter->tx_logs.core_tx_enqueue);
	if (FUNC2(padapter, pxmitframe) == _FAIL) {
		FUNC1(_module_rtl871x_xmit_c_, _drv_err_,
			 ("rtw_xmitframe_enqueue: drop xmit pkt for classifier fail\n"));
/* 		pxmitframe->pkt = NULL; */
		return _FAIL;
	}

	return _SUCCESS;
}