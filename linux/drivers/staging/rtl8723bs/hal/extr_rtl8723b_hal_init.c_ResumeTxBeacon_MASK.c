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
struct hal_com_data {int RegFwHwTxQCtrl; int RegReg542; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct hal_com_data* FUNC1 (struct adapter*) ; 
 scalar_t__ REG_FWHW_TXQ_CTRL ; 
 scalar_t__ REG_TBTT_PROHIBIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_hci_hal_init_c_ ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct adapter *padapter)
{
	struct hal_com_data *pHalData = FUNC1(padapter);


	/*  2010.03.01. Marked by tynli. No need to call workitem beacause we record the value */
	/*  which should be read from register to a global variable. */

	FUNC2(_module_hci_hal_init_c_, _drv_info_, ("+ResumeTxBeacon\n"));

	pHalData->RegFwHwTxQCtrl |= FUNC0(6);
	FUNC3(padapter, REG_FWHW_TXQ_CTRL+2, pHalData->RegFwHwTxQCtrl);
	FUNC3(padapter, REG_TBTT_PROHIBIT+1, 0xff);
	pHalData->RegReg542 |= FUNC0(0);
	FUNC3(padapter, REG_TBTT_PROHIBIT+2, pHalData->RegReg542);
}