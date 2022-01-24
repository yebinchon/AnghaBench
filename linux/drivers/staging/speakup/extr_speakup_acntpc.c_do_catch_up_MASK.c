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
struct TYPE_6__ {int /*<<< orphan*/  port_tts; int /*<<< orphan*/  spinlock; scalar_t__ flushing; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELAY ; 
 int /*<<< orphan*/  FULL ; 
 int /*<<< orphan*/  JIFFY ; 
 char PROCSPEECH ; 
 char SPACE ; 
 int SPK_XMITR_TIMEOUT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__ speakup_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct var_t* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct spk_synth*) ; 
 scalar_t__ FUNC9 () ; 
 char FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static void FUNC16(struct spk_synth *synth)
{
	u_char ch;
	unsigned long flags;
	unsigned long jiff_max;
	int timeout;
	int delay_time_val;
	int jiffy_delta_val;
	int full_time_val;
	struct var_t *delay_time;
	struct var_t *full_time;
	struct var_t *jiffy_delta;

	jiffy_delta = FUNC7(JIFFY);
	delay_time = FUNC7(DELAY);
	full_time = FUNC7(FULL);

	FUNC5(&speakup_info.spinlock, flags);
	jiffy_delta_val = jiffy_delta->u.n.value;
	FUNC6(&speakup_info.spinlock, flags);

	jiff_max = jiffies + jiffy_delta_val;
	while (!FUNC0()) {
		FUNC5(&speakup_info.spinlock, flags);
		if (speakup_info.flushing) {
			speakup_info.flushing = 0;
			FUNC6(&speakup_info.spinlock, flags);
			synth->flush(synth);
			continue;
		}
		FUNC11();
		if (FUNC9()) {
			FUNC6(&speakup_info.spinlock, flags);
			break;
		}
		FUNC4(TASK_INTERRUPTIBLE);
		full_time_val = full_time->u.n.value;
		FUNC6(&speakup_info.spinlock, flags);
		if (FUNC12()) {
			FUNC3(FUNC1(full_time_val));
			continue;
		}
		FUNC4(TASK_RUNNING);
		timeout = SPK_XMITR_TIMEOUT;
		while (FUNC13()) {
			if (!--timeout)
				break;
			FUNC15(1);
		}
		FUNC5(&speakup_info.spinlock, flags);
		ch = FUNC10();
		FUNC6(&speakup_info.spinlock, flags);
		if (ch == '\n')
			ch = PROCSPEECH;
		FUNC2(ch, speakup_info.port_tts);
		if (FUNC14(jiffies, jiff_max) && ch == SPACE) {
			timeout = SPK_XMITR_TIMEOUT;
			while (FUNC13()) {
				if (!--timeout)
					break;
				FUNC15(1);
			}
			FUNC2(PROCSPEECH, speakup_info.port_tts);
			FUNC5(&speakup_info.spinlock, flags);
			jiffy_delta_val = jiffy_delta->u.n.value;
			delay_time_val = delay_time->u.n.value;
			FUNC6(&speakup_info.spinlock, flags);
			FUNC3(FUNC1(delay_time_val));
			jiff_max = jiffies + jiffy_delta_val;
		}
	}
	timeout = SPK_XMITR_TIMEOUT;
	while (FUNC13()) {
		if (!--timeout)
			break;
		FUNC15(1);
	}
	FUNC2(PROCSPEECH, speakup_info.port_tts);
}