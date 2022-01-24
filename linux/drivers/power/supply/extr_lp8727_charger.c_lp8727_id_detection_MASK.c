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
typedef  int u8 ;
struct lp8727_platform_data {int /*<<< orphan*/ * usb; int /*<<< orphan*/ * ac; } ;
struct lp8727_chg {int devid; int /*<<< orphan*/ * chg_param; struct lp8727_platform_data* pdata; } ;

/* Variables and functions */
 int LP8727_ID_DEDICATED_CHG ; 
 int LP8727_ID_NONE ; 
 int LP8727_ID_TA ; 
 int LP8727_ID_USB_CHG ; 
 int LP8727_ID_USB_DS ; 
 int LP8727_SW_DM1_DM ; 
 int LP8727_SW_DM1_HiZ ; 
 int LP8727_SW_DP2_DP ; 
 int LP8727_SW_DP2_HiZ ; 
 int /*<<< orphan*/  FUNC0 (struct lp8727_chg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lp8727_chg*) ; 
 int /*<<< orphan*/  FUNC2 (struct lp8727_chg*) ; 

__attribute__((used)) static void FUNC3(struct lp8727_chg *pchg, u8 id, int vbusin)
{
	struct lp8727_platform_data *pdata = pchg->pdata;
	u8 devid = LP8727_ID_NONE;
	u8 swctrl = LP8727_SW_DM1_HiZ | LP8727_SW_DP2_HiZ;

	switch (id) {
	case 0x5:
		devid = LP8727_ID_TA;
		pchg->chg_param = pdata ? pdata->ac : NULL;
		break;
	case 0xB:
		if (FUNC1(pchg)) {
			pchg->chg_param = pdata ? pdata->ac : NULL;
			devid = LP8727_ID_DEDICATED_CHG;
		} else if (FUNC2(pchg)) {
			pchg->chg_param = pdata ? pdata->usb : NULL;
			devid = LP8727_ID_USB_CHG;
			swctrl = LP8727_SW_DM1_DM | LP8727_SW_DP2_DP;
		} else if (vbusin) {
			devid = LP8727_ID_USB_DS;
			swctrl = LP8727_SW_DM1_DM | LP8727_SW_DP2_DP;
		}
		break;
	default:
		devid = LP8727_ID_NONE;
		pchg->chg_param = NULL;
		break;
	}

	pchg->devid = devid;
	FUNC0(pchg, swctrl);
}