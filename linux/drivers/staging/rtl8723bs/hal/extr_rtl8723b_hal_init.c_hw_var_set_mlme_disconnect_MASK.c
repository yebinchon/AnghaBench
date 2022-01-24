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
typedef  int /*<<< orphan*/  u8 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIS_TSF_UDT ; 
 int /*<<< orphan*/  REG_BCN_CTRL ; 
 int /*<<< orphan*/  REG_DUAL_TSF_RST ; 
 int /*<<< orphan*/  REG_RXFLTMAP2 ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct adapter *padapter, u8 variable, u8 *val)
{
	u8 val8;

	/*  Set RCR to not to receive data frame when NO LINK state */
	/* rtw_write32(padapter, REG_RCR, rtw_read32(padapter, REG_RCR) & ~RCR_ADF); */
	/*  reject all data frames */
	FUNC2(padapter, REG_RXFLTMAP2, 0);

	/*  reset TSF */
	FUNC3(padapter, REG_DUAL_TSF_RST, FUNC0(0));

	/*  disable update TSF */
	val8 = FUNC1(padapter, REG_BCN_CTRL);
	val8 |= DIS_TSF_UDT;
	FUNC3(padapter, REG_BCN_CTRL, val8);
}