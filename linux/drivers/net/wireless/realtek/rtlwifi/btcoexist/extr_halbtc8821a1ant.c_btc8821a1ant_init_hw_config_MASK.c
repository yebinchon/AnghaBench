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
typedef  int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_read_1byte ) (struct btc_coexist*,int) ;int /*<<< orphan*/  (* btc_write_1byte_bitmask ) (struct btc_coexist*,int,int,int) ;int /*<<< orphan*/  (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int /*<<< orphan*/  (* btc_get ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* btc_read_2byte ) (struct btc_coexist*,int) ;int /*<<< orphan*/  (* btc_read_4byte ) (struct btc_coexist*,int) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {int backup_ampdu_max_time; int /*<<< orphan*/  backup_retry_limit; int /*<<< orphan*/  backup_arfr_cnt2; int /*<<< orphan*/  backup_arfr_cnt1; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_ANT_PATH_BT ; 
 int /*<<< orphan*/  BTC_ANT_PATH_PTA ; 
 int /*<<< orphan*/  BTC_GET_BL_WIFI_UNDER_5G ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* coex_dm ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int) ; 
 int FUNC7 (struct btc_coexist*,int) ; 
 int FUNC8 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*,int,int) ; 

__attribute__((used)) static void FUNC13(struct btc_coexist *btcoexist,
					bool back_up, bool wifi_only)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	u8 u1_tmp = 0;
	bool wifi_under_5g = false;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
		 "[BTCoex], 1Ant Init HW Config!!\n");

	if (wifi_only)
		return;

	if (back_up) {
		coex_dm->backup_arfr_cnt1 = btcoexist->btc_read_4byte(btcoexist,
								      0x430);
		coex_dm->backup_arfr_cnt2 = btcoexist->btc_read_4byte(btcoexist,
								      0x434);
		coex_dm->backup_retry_limit =
			btcoexist->btc_read_2byte(btcoexist, 0x42a);
		coex_dm->backup_ampdu_max_time =
			btcoexist->btc_read_1byte(btcoexist, 0x456);
	}

	/* 0x790[5:0] = 0x5 */
	u1_tmp = btcoexist->btc_read_1byte(btcoexist, 0x790);
	u1_tmp &= 0xc0;
	u1_tmp |= 0x5;
	btcoexist->btc_write_1byte(btcoexist, 0x790, u1_tmp);

	btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);

	/* Antenna config */
	if (wifi_under_5g)
		FUNC2(btcoexist, BTC_ANT_PATH_BT,
					  true, false);
	else
		FUNC2(btcoexist, BTC_ANT_PATH_PTA,
					  true, false);
	/* PTA parameter */
	FUNC1(btcoexist, FORCE_EXEC, 0);

	/* Enable counter statistics
	 * 0x76e[3] =1, WLAN_Act control by PTA
	 */
	btcoexist->btc_write_1byte(btcoexist, 0x76e, 0xc);
	btcoexist->btc_write_1byte(btcoexist, 0x778, 0x3);
	btcoexist->btc_write_1byte_bitmask(btcoexist, 0x40, 0x20, 0x1);
}