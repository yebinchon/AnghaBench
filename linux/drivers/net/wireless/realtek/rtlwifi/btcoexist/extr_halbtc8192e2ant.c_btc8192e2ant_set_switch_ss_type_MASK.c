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
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int /*<<< orphan*/  (* btc_set ) (struct btc_coexist*,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int /*<<< orphan*/  (* btc_write_1byte_bitmask ) (struct btc_coexist*,int,int,int) ;int /*<<< orphan*/  (* btc_write_4byte ) (struct btc_coexist*,int,int) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  cur_ra_mask_type; } ;

/* Variables and functions */
 int BTC_MIMO_PS_DYNAMIC ; 
 int BTC_MIMO_PS_STATIC ; 
 int /*<<< orphan*/  BTC_SET_ACT_SEND_MIMO_PS ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FORCE_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct btc_coexist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* coex_dm ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct btc_coexist*,int,int,int) ; 

__attribute__((used)) static void FUNC15(struct btc_coexist *btcoexist,
					    u8 ss_type)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;
	u8 mimops = BTC_MIMO_PS_DYNAMIC;
	u32 dis_ra_mask = 0x0;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
		 "[BTCoex], REAL set SS Type = %d\n", ss_type);

	dis_ra_mask = FUNC1(btcoexist, ss_type,
						  coex_dm->cur_ra_mask_type);
	FUNC3(btcoexist, FORCE_EXEC, dis_ra_mask);

	if (ss_type == 1) {
		FUNC2(btcoexist, FORCE_EXEC, false, 1);
		/* switch ofdm path */
		btcoexist->btc_write_1byte(btcoexist, 0xc04, 0x11);
		btcoexist->btc_write_1byte(btcoexist, 0xd04, 0x1);
		btcoexist->btc_write_4byte(btcoexist, 0x90c, 0x81111111);
		/* switch cck patch */
		btcoexist->btc_write_1byte_bitmask(btcoexist, 0xe77, 0x4, 0x1);
		btcoexist->btc_write_1byte(btcoexist, 0xa07, 0x81);
		mimops = BTC_MIMO_PS_STATIC;
	} else if (ss_type == 2) {
		FUNC2(btcoexist, FORCE_EXEC, false, 0);
		btcoexist->btc_write_1byte(btcoexist, 0xc04, 0x33);
		btcoexist->btc_write_1byte(btcoexist, 0xd04, 0x3);
		btcoexist->btc_write_4byte(btcoexist, 0x90c, 0x81121313);
		btcoexist->btc_write_1byte_bitmask(btcoexist, 0xe77, 0x4, 0x0);
		btcoexist->btc_write_1byte(btcoexist, 0xa07, 0x41);
		mimops = BTC_MIMO_PS_DYNAMIC;
	}
	/* set rx 1ss or 2ss */
	btcoexist->btc_set(btcoexist, BTC_SET_ACT_SEND_MIMO_PS, &mimops);
}