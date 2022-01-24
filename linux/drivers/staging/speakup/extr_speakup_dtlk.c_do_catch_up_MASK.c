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
 int /*<<< orphan*/  JIFFY ; 
 char PROCSPEECH ; 
 char SPACE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__ speakup_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct var_t* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (struct spk_synth*) ; 
 scalar_t__ FUNC9 () ; 
 char FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 (int,unsigned long) ; 

__attribute__((used)) static void FUNC14(struct spk_synth *synth)
{
	u_char ch;
	unsigned long flags;
	unsigned long jiff_max;
	struct var_t *jiffy_delta;
	struct var_t *delay_time;
	int jiffy_delta_val;
	int delay_time_val;

	jiffy_delta = FUNC6(JIFFY);
	delay_time = FUNC6(DELAY);
	FUNC4(&speakup_info.spinlock, flags);
	jiffy_delta_val = jiffy_delta->u.n.value;
	FUNC5(&speakup_info.spinlock, flags);
	jiff_max = jiffies + jiffy_delta_val;
	while (!FUNC0()) {
		FUNC4(&speakup_info.spinlock, flags);
		if (speakup_info.flushing) {
			speakup_info.flushing = 0;
			FUNC5(&speakup_info.spinlock, flags);
			synth->flush(synth);
			continue;
		}
		FUNC11();
		if (FUNC9()) {
			FUNC5(&speakup_info.spinlock, flags);
			break;
		}
		FUNC3(TASK_INTERRUPTIBLE);
		delay_time_val = delay_time->u.n.value;
		FUNC5(&speakup_info.spinlock, flags);
		if (FUNC12()) {
			FUNC2(FUNC1(delay_time_val));
			continue;
		}
		FUNC3(TASK_RUNNING);
		FUNC4(&speakup_info.spinlock, flags);
		ch = FUNC10();
		FUNC5(&speakup_info.spinlock, flags);
		if (ch == '\n')
			ch = PROCSPEECH;
		FUNC7(ch);
		if (FUNC13(jiffies, jiff_max) && (ch == SPACE)) {
			FUNC7(PROCSPEECH);
			FUNC4(&speakup_info.spinlock, flags);
			delay_time_val = delay_time->u.n.value;
			jiffy_delta_val = jiffy_delta->u.n.value;
			FUNC5(&speakup_info.spinlock, flags);
			FUNC2(FUNC1(delay_time_val));
			jiff_max = jiffies + jiffy_delta_val;
		}
	}
	FUNC7(PROCSPEECH);
}