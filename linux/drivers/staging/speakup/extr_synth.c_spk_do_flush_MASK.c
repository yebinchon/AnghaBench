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
struct TYPE_4__ {int flushing; } ;
struct TYPE_3__ {scalar_t__ alive; } ;

/* Variables and functions */
 int /*<<< orphan*/  speakup_event ; 
 TYPE_2__ speakup_info ; 
 int /*<<< orphan*/  speakup_task ; 
 int /*<<< orphan*/  spk_pitch_buff ; 
 scalar_t__ spk_pitch_shift ; 
 TYPE_1__* synth ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	if (!synth)
		return;

	speakup_info.flushing = 1;
	FUNC0();
	if (synth->alive) {
		if (spk_pitch_shift) {
			FUNC1("%s", spk_pitch_buff);
			spk_pitch_shift = 0;
		}
	}
	FUNC2(&speakup_event);
	FUNC3(speakup_task);
}