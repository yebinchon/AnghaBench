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
typedef  int u64 ;
struct mlme_ext_info {int bcn_interval; int state; } ;
struct mlme_ext_priv {int TSFValue; struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  EN_BCN_FUNCTION ; 
 int /*<<< orphan*/  REG_BCN_CTRL ; 
 scalar_t__ REG_TSFTR ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int WIFI_FW_ADHOC_STATE ; 
 int WIFI_FW_AP_STATE ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct adapter *padapter, u8 variable, u8 *val)
{
	u8 val8;
	u64 tsf;
	struct mlme_ext_priv *pmlmeext;
	struct mlme_ext_info *pmlmeinfo;


	pmlmeext = &padapter->mlmeextpriv;
	pmlmeinfo = &pmlmeext->mlmext_info;

	tsf = pmlmeext->TSFValue-FUNC2(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval*1024))-1024; /* us */

	if (
		((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) ||
		((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE)
	)
		FUNC1(padapter);

	{
		/*  disable related TSF function */
		val8 = FUNC3(padapter, REG_BCN_CTRL);
		val8 &= ~EN_BCN_FUNCTION;
		FUNC5(padapter, REG_BCN_CTRL, val8);

		FUNC4(padapter, REG_TSFTR, tsf);
		FUNC4(padapter, REG_TSFTR+4, tsf>>32);

		/*  enable related TSF function */
		val8 = FUNC3(padapter, REG_BCN_CTRL);
		val8 |= EN_BCN_FUNCTION;
		FUNC5(padapter, REG_BCN_CTRL, val8);
	}

	if (
		((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) ||
		((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE)
	)
		FUNC0(padapter);
}