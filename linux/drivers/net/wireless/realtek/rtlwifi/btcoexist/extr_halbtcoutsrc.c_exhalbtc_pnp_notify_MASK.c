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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int btdm_ant_num; } ;
struct btc_coexist {int /*<<< orphan*/  adapter; TYPE_1__ board_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*) ; 

void FUNC8(struct btc_coexist *btcoexist, u8 pnp_state)
{
	if (!FUNC7(btcoexist))
		return;

	/* currently only 1ant we have to do the notification,
	 * once pnp is notified to sleep state, we have to leave LPS that
	 * we can sleep normally.
	 */

	if (FUNC1(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 1)
			FUNC3(btcoexist, pnp_state);
		else if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC4(btcoexist, pnp_state);
	} else if (FUNC2(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 1)
			FUNC5(btcoexist, pnp_state);
		else if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC6(btcoexist, pnp_state);
	} else if (FUNC0(btcoexist->adapter)) {
	}
}