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
struct btc_coexist {int /*<<< orphan*/  (* btc_set ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
#define  BTC_PS_LPS_OFF 130 
#define  BTC_PS_LPS_ON 129 
#define  BTC_PS_WIFI_NATIVE 128 
 int /*<<< orphan*/  BTC_SET_ACT_DISABLE_LOW_POWER ; 
 int /*<<< orphan*/  BTC_SET_ACT_ENTER_LPS ; 
 int /*<<< orphan*/  BTC_SET_ACT_LEAVE_LPS ; 
 int /*<<< orphan*/  BTC_SET_ACT_NORMAL_LPS ; 
 int /*<<< orphan*/  NORMAL_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC7(struct btc_coexist *btcoexist,
					  u8 ps_type, u8 lps_val, u8 rpwm_val)
{
	bool low_pwr_disable = false;

	switch (ps_type) {
	case BTC_PS_WIFI_NATIVE:
		/* recover to original 32k low power setting */
		low_pwr_disable = false;
		btcoexist->btc_set(btcoexist, BTC_SET_ACT_DISABLE_LOW_POWER,
				   &low_pwr_disable);
		btcoexist->btc_set(btcoexist, BTC_SET_ACT_NORMAL_LPS, NULL);
		break;
	case BTC_PS_LPS_ON:
		FUNC1(btcoexist,
							true);
		FUNC0(btcoexist, NORMAL_EXEC, lps_val,
				      rpwm_val);
		/* when coex force to enter LPS, do not enter 32k low power */
		low_pwr_disable = true;
		btcoexist->btc_set(btcoexist, BTC_SET_ACT_DISABLE_LOW_POWER,
				   &low_pwr_disable);
		/* power save must executed before psTdma */
		btcoexist->btc_set(btcoexist, BTC_SET_ACT_ENTER_LPS, NULL);
		break;
	case BTC_PS_LPS_OFF:
		FUNC1(btcoexist, false);
		btcoexist->btc_set(btcoexist, BTC_SET_ACT_LEAVE_LPS, NULL);
		break;
	default:
		break;
	}
}