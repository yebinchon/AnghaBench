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
struct vc_data {size_t vc_num; } ;
struct TYPE_2__ {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 size_t fg_console ; 
 int /*<<< orphan*/  is_cursor ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/ * speakup_console ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*) ; 
 TYPE_1__ speakup_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ spk_keydown ; 
 int /*<<< orphan*/  spk_parked ; 
 scalar_t__ spk_shut_up ; 
 int /*<<< orphan*/  synth ; 

__attribute__((used)) static void FUNC4(struct vc_data *vc)
{
	unsigned long flags;

	if (!speakup_console[vc->vc_num])
		return;
	if (!FUNC2(&speakup_info.spinlock, flags))
		/* Speakup output, discard */
		return;
	if (!spk_parked)
		FUNC1(vc);
	if (spk_shut_up || !synth) {
		FUNC3(&speakup_info.spinlock, flags);
		return;
	}
	if (vc->vc_num == fg_console && spk_keydown) {
		spk_keydown = 0;
		if (!is_cursor)
			FUNC0(vc);
	}
	FUNC3(&speakup_info.spinlock, flags);
}