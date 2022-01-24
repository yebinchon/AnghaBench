#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_4__ {int value; } ;
struct TYPE_5__ {TYPE_1__ n; } ;
struct var_t {TYPE_2__ u; } ;
struct spk_synth {int /*<<< orphan*/  (* flush ) (struct spk_synth*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  spinlock; scalar_t__ flushing; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELAY ; 
 int /*<<< orphan*/  FULL ; 
 int /*<<< orphan*/  JIFFY ; 
 char PROCSPEECH ; 
 char SPACE ; 
 int /*<<< orphan*/  SWAIT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__ speakup_info ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct var_t* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct spk_synth*) ; 
 scalar_t__ FUNC10 () ; 
 char FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  synth_port ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 (int,unsigned long) ; 

__attribute__((used)) static void FUNC16(struct spk_synth *synth)
{
	u_char ch;
	int timeout;
	unsigned long flags;
	unsigned long jiff_max;
	struct var_t *jiffy_delta;
	struct var_t *delay_time;
	struct var_t *full_time;
	int delay_time_val;
	int full_time_val;
	int jiffy_delta_val;

	jiffy_delta = FUNC8(JIFFY);
	delay_time = FUNC8(DELAY);
	full_time = FUNC8(FULL);
	FUNC6(&speakup_info.spinlock, flags);
	jiffy_delta_val = jiffy_delta->u.n.value;
	FUNC7(&speakup_info.spinlock, flags);

	jiff_max = jiffies + jiffy_delta_val;
	while (!FUNC0()) {
		FUNC6(&speakup_info.spinlock, flags);
		if (speakup_info.flushing) {
			speakup_info.flushing = 0;
			FUNC7(&speakup_info.spinlock, flags);
			synth->flush(synth);
			continue;
		}
		FUNC12();
		if (FUNC10()) {
			FUNC7(&speakup_info.spinlock, flags);
			break;
		}
		FUNC5(TASK_INTERRUPTIBLE);
		full_time_val = full_time->u.n.value;
		FUNC7(&speakup_info.spinlock, flags);
		if (FUNC13()) {
			FUNC4(FUNC1(full_time_val));
			continue;
		}
		FUNC5(TASK_RUNNING);
		timeout = 1000;
		while (FUNC14())
			if (--timeout <= 0)
				break;
		if (timeout <= 0) {
			FUNC2();
			break;
		}
		FUNC6(&speakup_info.spinlock, flags);
		ch = FUNC11();
		FUNC7(&speakup_info.spinlock, flags);
		if (ch == '\n')
			ch = PROCSPEECH;
		FUNC3(ch, synth_port);
		SWAIT;
		if (FUNC15(jiffies, jiff_max) && (ch == SPACE)) {
			timeout = 1000;
			while (FUNC14())
				if (--timeout <= 0)
					break;
			if (timeout <= 0) {
				FUNC2();
				break;
			}
			FUNC3(PROCSPEECH, synth_port);
			FUNC6(&speakup_info.spinlock, flags);
			jiffy_delta_val = jiffy_delta->u.n.value;
			delay_time_val = delay_time->u.n.value;
			FUNC7(&speakup_info.spinlock, flags);
			FUNC4(FUNC1(delay_time_val));
			jiff_max = jiffies + jiffy_delta_val;
		}
	}
	timeout = 1000;
	while (FUNC14())
		if (--timeout <= 0)
			break;
	if (timeout <= 0)
		FUNC2();
	else
		FUNC3(PROCSPEECH, synth_port);
}