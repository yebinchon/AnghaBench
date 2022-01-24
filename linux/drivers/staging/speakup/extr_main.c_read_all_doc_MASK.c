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
struct vc_data {scalar_t__ vc_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  RA_DOWN_ARROW ; 
 int /*<<< orphan*/  RA_TIMER ; 
 int /*<<< orphan*/  cursor_timer ; 
 scalar_t__ cursor_track ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ fg_console ; 
 int FUNC1 (struct vc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_keyboard_notifier ; 
 scalar_t__ prev_cursor_track ; 
 scalar_t__ read_all_mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ spk_shut_up ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  synth ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct vc_data *vc)
{
	if ((vc->vc_num != fg_console) || !synth || spk_shut_up)
		return;
	if (!FUNC7())
		return;
	if (cursor_track != read_all_mode)
		prev_cursor_track = cursor_track;
	cursor_track = read_all_mode;
	FUNC4(0);
	if (FUNC1(vc, 0) == -1) {
		FUNC0(&cursor_timer);
		if (!in_keyboard_notifier)
			FUNC3();
		FUNC5(vc, RA_DOWN_ARROW);
	} else {
		FUNC2(0, 0);
		FUNC6(0);
		FUNC5(vc, RA_TIMER);
	}
}