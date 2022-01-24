#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int btdm_ant_num; } ;
struct TYPE_4__ {int /*<<< orphan*/  cnt_bt_info_notify; } ;
struct btc_coexist {TYPE_1__ board_info; int /*<<< orphan*/  adapter; TYPE_2__ statistics; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*) ; 

void FUNC11(struct btc_coexist *btcoexist,
			     u8 *tmp_buf, u8 length)
{
	if (!FUNC8(btcoexist))
		return;
	btcoexist->statistics.cnt_bt_info_notify++;

	FUNC9(btcoexist);

	if (FUNC2(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC7(btcoexist, tmp_buf,
						       length);
		else if (btcoexist->board_info.btdm_ant_num == 1)
			FUNC6(btcoexist, tmp_buf,
						       length);
	} else if (FUNC1(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC5(btcoexist, tmp_buf,
						       length);
		else if (btcoexist->board_info.btdm_ant_num == 1)
			FUNC4(btcoexist, tmp_buf,
						       length);
	} else if (FUNC0(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC3(btcoexist, tmp_buf,
						       length);
	}

	FUNC10(btcoexist);
}