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
struct hal_data_8188e {int RegFwHwTxQCtrl; int RegReg542; } ;
struct adapter {struct hal_data_8188e* HalData; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ REG_FWHW_TXQ_CTRL ; 
 scalar_t__ REG_TBTT_PROHIBIT ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct adapter *adapt)
{
	struct hal_data_8188e *haldata = adapt->HalData;

	/*  2010.03.01. Marked by tynli. No need to call workitem beacause we record the value */
	/*  which should be read from register to a global variable. */

	FUNC1(adapt, REG_FWHW_TXQ_CTRL + 2, (haldata->RegFwHwTxQCtrl) | FUNC0(6));
	haldata->RegFwHwTxQCtrl |= FUNC0(6);
	FUNC1(adapt, REG_TBTT_PROHIBIT + 1, 0xff);
	haldata->RegReg542 |= FUNC0(0);
	FUNC1(adapt, REG_TBTT_PROHIBIT + 2, haldata->RegReg542);
}