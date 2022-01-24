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
struct seq_file {int dummy; } ;
struct TYPE_2__ {int btdm_ant_num; } ;
struct btc_coexist {TYPE_1__ board_info; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*) ; 

void FUNC11(struct btc_coexist *btcoexist,
				   struct seq_file *m)
{
	if (!FUNC8(btcoexist))
		return;

	FUNC9(btcoexist);

	if (FUNC2(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC7(btcoexist, m);
		else if (btcoexist->board_info.btdm_ant_num == 1)
			FUNC6(btcoexist, m);
	} else if (FUNC1(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC5(btcoexist, m);
		else if (btcoexist->board_info.btdm_ant_num == 1)
			FUNC4(btcoexist, m);
	} else if (FUNC0(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC3(btcoexist, m);
	}

	FUNC10(btcoexist);
}