#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bleep {scalar_t__ jiffies; scalar_t__ freq; scalar_t__ active; } ;
struct TYPE_5__ {int /*<<< orphan*/  spinlock; scalar_t__ flushing; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* catch_up ) (TYPE_1__*) ;scalar_t__ alive; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  speakup_event ; 
 TYPE_3__ speakup_info ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  spk_mutex ; 
 struct bleep spk_unprocessed_sound ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 TYPE_1__* synth ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  wait ; 

int FUNC13(void *data)
{
	unsigned long flags;
	int should_break;
	struct bleep our_sound;

	our_sound.active = 0;
	our_sound.freq = 0;
	our_sound.jiffies = 0;

	FUNC4(&spk_mutex);
	while (1) {
		FUNC0(wait);

		while (1) {
			FUNC9(&speakup_info.spinlock, flags);
			our_sound = spk_unprocessed_sound;
			spk_unprocessed_sound.active = 0;
			FUNC6(&speakup_event, &wait,
					TASK_INTERRUPTIBLE);
			should_break = FUNC3() ||
				our_sound.active ||
				(synth && synth->catch_up && synth->alive &&
					(speakup_info.flushing ||
					!FUNC12()));
			FUNC10(&speakup_info.spinlock, flags);
			if (should_break)
				break;
			FUNC5(&spk_mutex);
			FUNC7();
			FUNC4(&spk_mutex);
		}
		FUNC1(&speakup_event, &wait);
		if (FUNC3())
			break;

		if (our_sound.active)
			FUNC2(our_sound.freq, our_sound.jiffies);
		if (synth && synth->catch_up && synth->alive) {
			/*
			 * It is up to the callee to take the lock, so that it
			 * can sleep whenever it likes
			 */
			synth->catch_up(synth);
		}

		FUNC8();
	}
	FUNC5(&spk_mutex);
	return 0;
}