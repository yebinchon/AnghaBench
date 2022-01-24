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
typedef  int /*<<< orphan*/  u16 ;
struct vc_data {scalar_t__ vc_num; int vc_x; scalar_t__ vc_y; } ;
struct TYPE_2__ {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 scalar_t__ CT_Highlight ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ cursor_track ; 
 scalar_t__ fg_console ; 
 scalar_t__ is_cursor ; 
 scalar_t__ read_all_mode ; 
 TYPE_1__ speakup_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int spk_bell_pos ; 
 scalar_t__ spk_keydown ; 
 scalar_t__ spk_shut_up ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  synth ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ win_bottom ; 
 scalar_t__ win_enabled ; 
 scalar_t__ win_left ; 
 scalar_t__ win_right ; 
 scalar_t__ win_top ; 

__attribute__((used)) static void FUNC5(struct vc_data *vc, u16 *str, int len)
{
	unsigned long flags;

	if ((vc->vc_num != fg_console) || spk_shut_up || !synth)
		return;
	if (!FUNC1(&speakup_info.spinlock, flags))
		/* Speakup output, discard */
		return;
	if (spk_bell_pos && spk_keydown && (vc->vc_x == spk_bell_pos - 1))
		FUNC0(3);
	if ((is_cursor) || (cursor_track == read_all_mode)) {
		if (cursor_track == CT_Highlight)
			FUNC4(vc, str, len);
		FUNC2(&speakup_info.spinlock, flags);
		return;
	}
	if (win_enabled) {
		if (vc->vc_x >= win_left && vc->vc_x <= win_right &&
		    vc->vc_y >= win_top && vc->vc_y <= win_bottom) {
			FUNC2(&speakup_info.spinlock, flags);
			return;
		}
	}

	FUNC3(str, len);
	FUNC2(&speakup_info.spinlock, flags);
}