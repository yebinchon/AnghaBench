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
typedef  int /*<<< orphan*/  u16 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_read_1byte ) (struct btc_coexist*,int) ;scalar_t__ chip_interface; int /*<<< orphan*/  (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int /*<<< orphan*/  (* btc_write_2byte ) (struct btc_coexist*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* btc_read_2byte ) (struct btc_coexist*,int) ;int /*<<< orphan*/  (* btc_write_4byte ) (struct btc_coexist*,int,int) ;int /*<<< orphan*/  (* btc_read_4byte ) (struct btc_coexist*,int) ;int /*<<< orphan*/  (* btc_get_rf_reg ) (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {int backup_ampdu_maxtime; int /*<<< orphan*/  backup_retry_limit; int /*<<< orphan*/  backup_arfr_cnt2; int /*<<< orphan*/  backup_arfr_cnt1; int /*<<< orphan*/  bt_rf0x1e_backup; } ;

/* Variables and functions */
 int BIT0 ; 
 int BIT4 ; 
 int /*<<< orphan*/  BIT9 ; 
 scalar_t__ BTC_INTF_USB ; 
 int /*<<< orphan*/  BTC_RF_A ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* coex_dm ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int,int) ; 
 int FUNC7 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct btc_coexist*,int) ; 
 int FUNC14 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct btc_coexist*,int,int) ; 
 int FUNC16 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct btc_coexist*,int,int) ; 
 int FUNC18 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct btc_coexist*,int) ; 
 int FUNC22 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC25 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC26 (struct btc_coexist*,int,int) ; 

__attribute__((used)) static void FUNC27(struct btc_coexist *btcoexist,
				       bool backup)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	u16 u16tmp = 0;
	u8 u8tmp = 0;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
		 "[BTCoex], 2Ant Init HW Config!!\n");

	if (backup) {
		/* backup rf 0x1e value */
		coex_dm->bt_rf0x1e_backup =
			btcoexist->btc_get_rf_reg(btcoexist, BTC_RF_A,
						  0x1e, 0xfffff);

		coex_dm->backup_arfr_cnt1 = btcoexist->btc_read_4byte(btcoexist,
								      0x430);
		coex_dm->backup_arfr_cnt2 = btcoexist->btc_read_4byte(btcoexist,
								     0x434);
		coex_dm->backup_retry_limit = btcoexist->btc_read_2byte(
								    btcoexist,
								    0x42a);
		coex_dm->backup_ampdu_maxtime = btcoexist->btc_read_1byte(
								    btcoexist,
								    0x456);
	}

	/* antenna sw ctrl to bt */
	btcoexist->btc_write_1byte(btcoexist, 0x4f, 0x6);
	btcoexist->btc_write_1byte(btcoexist, 0x944, 0x24);
	btcoexist->btc_write_4byte(btcoexist, 0x930, 0x700700);
	btcoexist->btc_write_1byte(btcoexist, 0x92c, 0x20);
	if (btcoexist->chip_interface == BTC_INTF_USB)
		btcoexist->btc_write_4byte(btcoexist, 0x64, 0x30430004);
	else
		btcoexist->btc_write_4byte(btcoexist, 0x64, 0x30030004);

	FUNC1(btcoexist, FORCE_EXEC, 0);

	/* antenna switch control parameter */
	btcoexist->btc_write_4byte(btcoexist, 0x858, 0x55555555);

	/* coex parameters */
	btcoexist->btc_write_1byte(btcoexist, 0x778, 0x3);
	/* 0x790[5:0] = 0x5 */
	u8tmp = btcoexist->btc_read_1byte(btcoexist, 0x790);
	u8tmp &= 0xc0;
	u8tmp |= 0x5;
	btcoexist->btc_write_1byte(btcoexist, 0x790, u8tmp);

	/* enable counter statistics */
	btcoexist->btc_write_1byte(btcoexist, 0x76e, 0x4);

	/* enable PTA */
	btcoexist->btc_write_1byte(btcoexist, 0x40, 0x20);
	/* enable mailbox interface */
	u16tmp = btcoexist->btc_read_2byte(btcoexist, 0x40);
	u16tmp |= BIT9;
	btcoexist->btc_write_2byte(btcoexist, 0x40, u16tmp);

	/* enable PTA I2C mailbox */
	u8tmp = btcoexist->btc_read_1byte(btcoexist, 0x101);
	u8tmp |= BIT4;
	btcoexist->btc_write_1byte(btcoexist, 0x101, u8tmp);

	/* enable bt clock when wifi is disabled. */
	u8tmp = btcoexist->btc_read_1byte(btcoexist, 0x93);
	u8tmp |= BIT0;
	btcoexist->btc_write_1byte(btcoexist, 0x93, u8tmp);
	/* enable bt clock when suspend. */
	u8tmp = btcoexist->btc_read_1byte(btcoexist, 0x7);
	u8tmp |= BIT0;
	btcoexist->btc_write_1byte(btcoexist, 0x7, u8tmp);
}