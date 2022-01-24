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
typedef  scalar_t__ u_char ;
struct vc_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int NOTIFY_OK ; 
 int NOTIFY_STOP ; 
 int /*<<< orphan*/  cursor_timer ; 
 scalar_t__ cursor_track ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ read_all_mode ; 
 TYPE_1__ speakup_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int spk_parked ; 
 int spk_shut_up ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*,scalar_t__) ; 
 int /*<<< orphan*/  synth ; 

__attribute__((used)) static int FUNC5(struct vc_data *vc, u_char value, char up_flag)
{
	unsigned long flags;

	FUNC1(&speakup_info.spinlock, flags);
	if (cursor_track == read_all_mode) {
		spk_parked &= 0xfe;
		if (!synth || up_flag || spk_shut_up) {
			FUNC2(&speakup_info.spinlock, flags);
			return NOTIFY_STOP;
		}
		FUNC0(&cursor_timer);
		spk_shut_up &= 0xfe;
		FUNC3();
		FUNC4(vc, value + 1);
		FUNC2(&speakup_info.spinlock, flags);
		return NOTIFY_STOP;
	}
	FUNC2(&speakup_info.spinlock, flags);
	return NOTIFY_OK;
}