#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_5__ {int value; } ;
struct TYPE_6__ {TYPE_1__ n; } ;
struct var_t {TYPE_2__ u; } ;
struct spk_synth {TYPE_3__* io_ops; int /*<<< orphan*/  (* flush ) (struct spk_synth*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  spinlock; scalar_t__ flushing; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* synth_out ) (struct spk_synth*,char) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DELAY ; 
 int /*<<< orphan*/  JIFFY ; 
 char PROCSPEECH ; 
 char SPACE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int in_escape ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__ speakup_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct var_t* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct spk_synth*) ; 
 int /*<<< orphan*/  FUNC9 (struct spk_synth*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct spk_synth*,char) ; 
 int /*<<< orphan*/  FUNC11 (struct spk_synth*,char) ; 
 int /*<<< orphan*/  FUNC12 (struct spk_synth*,char) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 char FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 () ; 
 scalar_t__ FUNC18 (int,unsigned long) ; 

__attribute__((used)) static void FUNC19(struct spk_synth *synth)
{
	u_char ch;
	static u_char last = '\0';
	unsigned long flags;
	unsigned long jiff_max;
	struct var_t *jiffy_delta;
	struct var_t *delay_time;
	int jiffy_delta_val = 0;
	int delay_time_val = 0;

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
		FUNC16();
		if (FUNC13()) {
			FUNC5(&speakup_info.spinlock, flags);
			break;
		}
		ch = FUNC15();
		FUNC3(TASK_INTERRUPTIBLE);
		delay_time_val = delay_time->u.n.value;
		FUNC5(&speakup_info.spinlock, flags);
		if (ch == '\n')
			ch = 0x0D;
		if (FUNC17() || !synth->io_ops->synth_out(synth, ch)) {
			FUNC2(FUNC1(delay_time_val));
			continue;
		}
		FUNC3(TASK_RUNNING);
		FUNC4(&speakup_info.spinlock, flags);
		FUNC14();
		FUNC5(&speakup_info.spinlock, flags);
		if (ch == '[') {
			in_escape = 1;
		} else if (ch == ']') {
			in_escape = 0;
		} else if (ch <= SPACE) {
			if (!in_escape && FUNC7(",.!?;:", last))
				synth->io_ops->synth_out(synth, PROCSPEECH);
			if (FUNC18(jiffies, jiff_max)) {
				if (!in_escape)
					synth->io_ops->synth_out(synth,
								 PROCSPEECH);
				FUNC4(&speakup_info.spinlock,
						  flags);
				jiffy_delta_val = jiffy_delta->u.n.value;
				delay_time_val = delay_time->u.n.value;
				FUNC5(&speakup_info.spinlock,
						       flags);
				FUNC2(FUNC1
						 (delay_time_val));
				jiff_max = jiffies + jiffy_delta_val;
			}
		}
		last = ch;
	}
	if (!in_escape)
		synth->io_ops->synth_out(synth, PROCSPEECH);
}