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
struct tty_struct {int /*<<< orphan*/  stopped; } ;
struct TYPE_2__ {int cols; int /*<<< orphan*/  lock; } ;
struct tty3270 {scalar_t__ esc_state; int cx; int cy; TYPE_1__ view; int /*<<< orphan*/  timer; int /*<<< orphan*/  wcc; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  TW_PLUSALARM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty3270*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty3270*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty3270*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tty3270*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC7 (struct tty3270*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty3270*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC9 (struct tty3270*,int) ; 

__attribute__((used)) static void
FUNC10(struct tty3270 *tp, struct tty_struct *tty,
		const unsigned char *buf, int count)
{
	int i_msg, i;

	FUNC0(&tp->view.lock);
	for (i_msg = 0; !tty->stopped && i_msg < count; i_msg++) {
		if (tp->esc_state != 0) {
			/* Continue escape sequence. */
			FUNC6(tp, buf[i_msg]);
			continue;
		}

		switch (buf[i_msg]) {
		case 0x07:		/* '\a' -- Alarm */
			tp->wcc |= TW_PLUSALARM;
			break;
		case 0x08:		/* Backspace. */
			if (tp->cx > 0) {
				tp->cx--;
				FUNC8(tp, ' ');
			}
			break;
		case 0x09:		/* '\t' -- Tabulate */
			for (i = tp->cx % 8; i < 8; i++) {
				if (tp->cx >= tp->view.cols) {
					FUNC4(tp);
					FUNC7(tp);
					break;
				}
				FUNC8(tp, ' ');
				tp->cx++;
			}
			break;
		case 0x0a:		/* '\n' -- New Line */
			FUNC4(tp);
			FUNC7(tp);
			break;
		case 0x0c:		/* '\f' -- Form Feed */
			FUNC5(tp, 2);
			tp->cx = tp->cy = 0;
			break;
		case 0x0d:		/* '\r' -- Carriage Return */
			tp->cx = 0;
			break;
		case 0x0f:		/* SuSE "exit alternate mode" */
			break;
		case 0x1b:		/* Start escape sequence. */
			FUNC6(tp, buf[i_msg]);
			break;
		default:		/* Insert normal character. */
			if (tp->cx >= tp->view.cols) {
				FUNC4(tp);
				FUNC7(tp);
			}
			FUNC8(tp, buf[i_msg]);
			tp->cx++;
			break;
		}
	}
	/* Convert current line to 3270 data fragment. */
	FUNC3(tp, tp->cy);

	/* Setup timer to update display after 1/10 second */
	if (!FUNC2(&tp->timer))
		FUNC9(tp, HZ/10);

	FUNC1(&tp->view.lock);
}