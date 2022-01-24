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
typedef  enum msg_index_t { ____Placeholder_msg_index_t } msg_index_t ;
struct TYPE_2__ {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int MSG_FIRST_INDEX ; 
 int MSG_LAST_INDEX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__* speakup_default_msgs ; 
 TYPE_1__ speakup_info ; 
 scalar_t__* speakup_msgs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(void)
{
	enum msg_index_t index;
	unsigned long flags;

	FUNC1(&speakup_info.spinlock, flags);
	for (index = MSG_FIRST_INDEX; index < MSG_LAST_INDEX; index++) {
		if (speakup_msgs[index] != speakup_default_msgs[index]) {
			FUNC0(speakup_msgs[index]);
			speakup_msgs[index] = speakup_default_msgs[index];
		}
	}
	FUNC2(&speakup_info.spinlock, flags);
}