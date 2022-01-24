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
typedef  char u16 ;
struct TYPE_5__ {int value; } ;
struct TYPE_6__ {TYPE_1__ n; } ;
struct var_t {TYPE_2__ u; } ;
struct spk_synth {char procspeech; TYPE_3__* io_ops; int /*<<< orphan*/  (* flush ) (struct spk_synth*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  spinlock; scalar_t__ flushing; } ;
struct TYPE_7__ {int (* synth_out_unicode ) (struct spk_synth*,char) ;int (* synth_out ) (struct spk_synth*,char) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DELAY ; 
 int /*<<< orphan*/  FULL ; 
 int /*<<< orphan*/  JIFFY ; 
 char SPACE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__ speakup_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct var_t* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct spk_synth*) ; 
 int FUNC8 (struct spk_synth*,char) ; 
 int FUNC9 (struct spk_synth*,char) ; 
 int FUNC10 (struct spk_synth*,char) ; 
 int FUNC11 (struct spk_synth*,char) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 char FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (int,unsigned long) ; 

__attribute__((used)) static void FUNC17(struct spk_synth *synth, int unicode)
{
	u16 ch;
	unsigned long flags;
	unsigned long jiff_max;
	struct var_t *delay_time;
	struct var_t *full_time;
	struct var_t *jiffy_delta;
	int jiffy_delta_val;
	int delay_time_val;
	int full_time_val;
	int ret;

	jiffy_delta = FUNC6(JIFFY);
	full_time = FUNC6(FULL);
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
		if (!unicode)
			FUNC15();
		if (FUNC12()) {
			FUNC5(&speakup_info.spinlock, flags);
			break;
		}
		ch = FUNC14();
		FUNC3(TASK_INTERRUPTIBLE);
		full_time_val = full_time->u.n.value;
		FUNC5(&speakup_info.spinlock, flags);
		if (ch == '\n')
			ch = synth->procspeech;
		if (unicode)
			ret = synth->io_ops->synth_out_unicode(synth, ch);
		else
			ret = synth->io_ops->synth_out(synth, ch);
		if (!ret) {
			FUNC2(FUNC1(full_time_val));
			continue;
		}
		if (FUNC16(jiffies, jiff_max) && (ch == SPACE)) {
			FUNC4(&speakup_info.spinlock, flags);
			jiffy_delta_val = jiffy_delta->u.n.value;
			delay_time_val = delay_time->u.n.value;
			full_time_val = full_time->u.n.value;
			FUNC5(&speakup_info.spinlock, flags);
			if (synth->io_ops->synth_out(synth, synth->procspeech))
				FUNC2(
					FUNC1(delay_time_val));
			else
				FUNC2(
					FUNC1(full_time_val));
			jiff_max = jiffies + jiffy_delta_val;
		}
		FUNC3(TASK_RUNNING);
		FUNC4(&speakup_info.spinlock, flags);
		FUNC13();
		FUNC5(&speakup_info.spinlock, flags);
	}
	synth->io_ops->synth_out(synth, synth->procspeech);
}