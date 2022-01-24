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
struct TYPE_4__ {int btdm_ant_num; } ;
struct TYPE_3__ {int /*<<< orphan*/  cnt_periodical; } ;
struct btc_coexist {TYPE_2__ board_info; int /*<<< orphan*/  adapter; TYPE_1__ statistics; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC11 (struct btc_coexist*) ; 

void FUNC12(struct btc_coexist *btcoexist)
{
	if (!FUNC8(btcoexist))
		return;
	btcoexist->statistics.cnt_periodical++;

	FUNC9(btcoexist);

	if (FUNC2(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC7(btcoexist);
		else if (btcoexist->board_info.btdm_ant_num == 1)
			if (!FUNC11(btcoexist))
				FUNC6(btcoexist);
	} else if (FUNC1(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC5(btcoexist);
		else if (btcoexist->board_info.btdm_ant_num == 1)
			FUNC4(btcoexist);
	} else if (FUNC0(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC3(btcoexist);
	}

	FUNC10(btcoexist);
}