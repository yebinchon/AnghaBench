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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DELAY ; 
 int /*<<< orphan*/  JIFFY ; 
 char PROCSPEECH ; 
 char SPACE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flush ; 
 int /*<<< orphan*/  flush_lock ; 
 int in_escape ; 
 scalar_t__ is_flushing ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_4__ speakup_info ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct var_t* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (struct spk_synth*) ; 
 int /*<<< orphan*/  FUNC12 (struct spk_synth*,char) ; 
 int /*<<< orphan*/  FUNC13 (struct spk_synth*,char) ; 
 int /*<<< orphan*/  FUNC14 (struct spk_synth*,char) ; 
 int /*<<< orphan*/  FUNC15 (struct spk_synth*,char) ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 () ; 
 scalar_t__ FUNC21 (int,unsigned long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC22(struct spk_synth *synth)
{
	int synth_full_val = 0;
	static u_char ch;
	static u_char last = '\0';
	unsigned long flags;
	unsigned long jiff_max;
	unsigned long timeout = FUNC3(4000);
	FUNC0(wait);
	struct var_t *jiffy_delta;
	struct var_t *delay_time;
	int jiffy_delta_val;
	int delay_time_val;

	jiffy_delta = FUNC9(JIFFY);
	delay_time = FUNC9(DELAY);
	FUNC7(&speakup_info.spinlock, flags);
	jiffy_delta_val = jiffy_delta->u.n.value;
	FUNC8(&speakup_info.spinlock, flags);
	jiff_max = jiffies + jiffy_delta_val;

	while (!FUNC2()) {
		/* if no ctl-a in 4, send data anyway */
		FUNC7(&flush_lock, flags);
		while (is_flushing && timeout) {
			FUNC4(&flush, &wait, TASK_INTERRUPTIBLE);
			FUNC8(&flush_lock, flags);
			timeout = FUNC5(timeout);
			FUNC7(&flush_lock, flags);
		}
		FUNC1(&flush, &wait);
		is_flushing = 0;
		FUNC8(&flush_lock, flags);

		FUNC7(&speakup_info.spinlock, flags);
		if (speakup_info.flushing) {
			speakup_info.flushing = 0;
			FUNC8(&speakup_info.spinlock, flags);
			synth->flush(synth);
			continue;
		}
		FUNC19();
		if (FUNC16()) {
			FUNC8(&speakup_info.spinlock, flags);
			break;
		}
		ch = FUNC18();
		FUNC6(TASK_INTERRUPTIBLE);
		delay_time_val = delay_time->u.n.value;
		synth_full_val = FUNC20();
		FUNC8(&speakup_info.spinlock, flags);
		if (ch == '\n')
			ch = 0x0D;
		if (synth_full_val || !synth->io_ops->synth_out(synth, ch)) {
			FUNC5(FUNC3(delay_time_val));
			continue;
		}
		FUNC6(TASK_RUNNING);
		FUNC7(&speakup_info.spinlock, flags);
		FUNC17();
		FUNC8(&speakup_info.spinlock, flags);
		if (ch == '[') {
			in_escape = 1;
		} else if (ch == ']') {
			in_escape = 0;
		} else if (ch <= SPACE) {
			if (!in_escape && FUNC10(",.!?;:", last))
				synth->io_ops->synth_out(synth, PROCSPEECH);
			if (FUNC21(jiffies, jiff_max)) {
				if (!in_escape)
					synth->io_ops->synth_out(synth,
								 PROCSPEECH);
				FUNC7(&speakup_info.spinlock,
						  flags);
				jiffy_delta_val = jiffy_delta->u.n.value;
				delay_time_val = delay_time->u.n.value;
				FUNC8(&speakup_info.spinlock,
						       flags);
				FUNC5(FUNC3
						 (delay_time_val));
				jiff_max = jiffies + jiffy_delta_val;
			}
		}
		last = ch;
	}
	if (!in_escape)
		synth->io_ops->synth_out(synth, PROCSPEECH);
}