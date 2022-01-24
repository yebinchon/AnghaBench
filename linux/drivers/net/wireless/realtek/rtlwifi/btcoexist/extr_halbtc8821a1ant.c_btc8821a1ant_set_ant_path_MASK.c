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
typedef  int /*<<< orphan*/  u32 ;
struct btc_board_info {scalar_t__ btdm_ant_pos; } ;
struct btc_coexist {int /*<<< orphan*/  (* btc_write_1byte_bitmask ) (struct btc_coexist*,int,int,int) ;int /*<<< orphan*/  (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int /*<<< orphan*/  (* btc_write_4byte ) (struct btc_coexist*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* btc_read_4byte ) (struct btc_coexist*,int) ;int /*<<< orphan*/  (* btc_fill_h2c ) (struct btc_coexist*,int,int,int*) ;struct btc_board_info board_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT23 ; 
 int /*<<< orphan*/  BIT24 ; 
 scalar_t__ BTC_ANTENNA_AT_MAIN_PORT ; 
#define  BTC_ANT_PATH_BT 130 
#define  BTC_ANT_PATH_PTA 129 
#define  BTC_ANT_PATH_WIFI 128 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct btc_coexist*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct btc_coexist*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct btc_coexist*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct btc_coexist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct btc_coexist*,int,int,int) ; 

__attribute__((used)) static void FUNC19(struct btc_coexist *btcoexist,
				      u8 ant_pos_type, bool init_hw_cfg,
				      bool wifi_off)
{
	struct btc_board_info *board_info = &btcoexist->board_info;
	u32 u4_tmp = 0;
	u8 h2c_parameter[2] = {0};

	if (init_hw_cfg) {
		/* 0x4c[23] = 0, 0x4c[24] = 1  Antenna control by WL/BT */
		u4_tmp = btcoexist->btc_read_4byte(btcoexist, 0x4c);
		u4_tmp &= ~BIT23;
		u4_tmp |= BIT24;
		btcoexist->btc_write_4byte(btcoexist, 0x4c, u4_tmp);

		btcoexist->btc_write_1byte_bitmask(btcoexist, 0x975, 0x3, 0x3);
		btcoexist->btc_write_1byte(btcoexist, 0xcb4, 0x77);

		if (board_info->btdm_ant_pos == BTC_ANTENNA_AT_MAIN_PORT) {
			/* tell firmware "antenna inverse"
			 * WRONG firmware antenna control code, need fw to fix
			 */
			h2c_parameter[0] = 1;
			h2c_parameter[1] = 1;
			btcoexist->btc_fill_h2c(btcoexist, 0x65, 2,
						h2c_parameter);
		} else {
			/* tell firmware "no antenna inverse"
			 * WRONG firmware antenna control code, need fw to fix
			 */
			h2c_parameter[0] = 0;
			h2c_parameter[1] = 1;
			btcoexist->btc_fill_h2c(btcoexist, 0x65, 2,
						h2c_parameter);
		}
	} else if (wifi_off) {
		/* 0x4c[24:23] = 00, Set Antenna control
		 * by BT_RFE_CTRL BT Vendor 0xac = 0xf002
		 */
		u4_tmp = btcoexist->btc_read_4byte(btcoexist, 0x4c);
		u4_tmp &= ~BIT23;
		u4_tmp &= ~BIT24;
		btcoexist->btc_write_4byte(btcoexist, 0x4c, u4_tmp);

		/* 0x765 = 0x18 */
		btcoexist->btc_write_1byte_bitmask(btcoexist, 0x765, 0x18, 0x3);
	} else {
		/* 0x765 = 0x0 */
		btcoexist->btc_write_1byte_bitmask(btcoexist, 0x765, 0x18, 0x0);
	}

	/* ext switch setting */
	switch (ant_pos_type) {
	case BTC_ANT_PATH_WIFI:
		btcoexist->btc_write_1byte(btcoexist, 0xcb4, 0x77);
		if (board_info->btdm_ant_pos == BTC_ANTENNA_AT_MAIN_PORT)
			btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7,
							   0x30, 0x1);
		else
			btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7,
							   0x30, 0x2);
		break;
	case BTC_ANT_PATH_BT:
		btcoexist->btc_write_1byte(btcoexist, 0xcb4, 0x77);
		if (board_info->btdm_ant_pos == BTC_ANTENNA_AT_MAIN_PORT)
			btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7,
							   0x30, 0x2);
		else
			btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7,
							   0x30, 0x1);
		break;
	default:
	case BTC_ANT_PATH_PTA:
		btcoexist->btc_write_1byte(btcoexist, 0xcb4, 0x66);
		if (board_info->btdm_ant_pos == BTC_ANTENNA_AT_MAIN_PORT)
			btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7,
							   0x30, 0x1);
		else
			btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7,
							   0x30, 0x2);
		break;
	}
}