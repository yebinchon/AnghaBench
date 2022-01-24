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
 scalar_t__ FUNC0 (char) ; 
 int in_escape ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__ speakup_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct var_t* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (struct spk_synth*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int,unsigned long) ; 

__attribute__((used)) static void FUNC15(struct spk_synth *synth)
{
	u_char ch;
	static u_char last;
	unsigned long flags;
	unsigned long jiff_max;
	struct var_t *jiffy_delta;
	struct var_t *delay_time;
	int jiffy_delta_val;
	int delay_time_val;

	jiffy_delta = FUNC7(JIFFY);
	delay_time = FUNC7(DELAY);
	FUNC5(&speakup_info.spinlock, flags);
	jiffy_delta_val = jiffy_delta->u.n.value;
	FUNC6(&speakup_info.spinlock, flags);
	jiff_max = jiffies + jiffy_delta_val;

	while (!FUNC1()) {
		FUNC5(&speakup_info.spinlock, flags);
		if (speakup_info.flushing) {
			speakup_info.flushing = 0;
			FUNC6(&speakup_info.spinlock, flags);
			synth->flush(synth);
			continue;
		}
		FUNC13();
		if (FUNC10()) {
			FUNC6(&speakup_info.spinlock, flags);
			break;
		}
		ch = FUNC12();
		FUNC4(TASK_INTERRUPTIBLE);
		delay_time_val = delay_time->u.n.value;
		FUNC6(&speakup_info.spinlock, flags);
		if (ch == '\n')
			ch = 0x0D;
		if (FUNC0(ch)) {
			FUNC3(FUNC2(delay_time_val));
			continue;
		}
		FUNC4(TASK_RUNNING);
		FUNC5(&speakup_info.spinlock, flags);
		FUNC11();
		FUNC6(&speakup_info.spinlock, flags);
		if (ch == '[') {
			in_escape = 1;
		} else if (ch == ']') {
			in_escape = 0;
		} else if (ch <= SPACE) {
			if (!in_escape && FUNC8(",.!?;:", last))
				FUNC0(PROCSPEECH);
			if (FUNC14(jiffies, jiff_max)) {
				if (!in_escape)
					FUNC0(PROCSPEECH);
				FUNC5(&speakup_info.spinlock,
						  flags);
				jiffy_delta_val = jiffy_delta->u.n.value;
				delay_time_val = delay_time->u.n.value;
				FUNC6(&speakup_info.spinlock,
						       flags);
				FUNC3(FUNC2
						 (delay_time_val));
				jiff_max = jiffies + jiffy_delta_val;
			}
		}
		last = ch;
		ch = 0;
	}
	if (!in_escape)
		FUNC0(PROCSPEECH);
}