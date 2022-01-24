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
struct TYPE_3__ {int btdm_ant_num; } ;
struct TYPE_4__ {int /*<<< orphan*/  cnt_init_hw_config; } ;
struct btc_coexist {TYPE_1__ board_info; int /*<<< orphan*/  adapter; TYPE_2__ statistics; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*) ; 

void FUNC10(struct btc_coexist *btcoexist, bool wifi_only)
{
	if (!FUNC9(btcoexist))
		return;

	btcoexist->statistics.cnt_init_hw_config++;

	if (FUNC3(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC8(btcoexist);
		else if (btcoexist->board_info.btdm_ant_num == 1)
			FUNC7(btcoexist, wifi_only);
	} else if (FUNC2(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC6(btcoexist);
		else if (btcoexist->board_info.btdm_ant_num == 1)
			FUNC5(btcoexist, wifi_only);
	} else if (FUNC1(btcoexist->adapter)) {
		/* 8723A has no this function */
	} else if (FUNC0(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC4(btcoexist);
	}
}