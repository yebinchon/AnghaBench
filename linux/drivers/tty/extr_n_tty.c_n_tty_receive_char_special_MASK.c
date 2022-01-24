#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  read_wait; int /*<<< orphan*/  fasync; int /*<<< orphan*/  flow_stopped; scalar_t__ stopped; struct n_tty_data* disc_data; } ;
struct n_tty_data {int lnext; size_t canon_head; size_t read_head; int /*<<< orphan*/  read_flags; scalar_t__ icanon; } ;

/* Variables and functions */
 unsigned char FUNC0 (struct tty_struct*) ; 
 unsigned char FUNC1 (struct tty_struct*) ; 
 unsigned char FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  EPOLLIN ; 
 unsigned char FUNC3 (struct tty_struct*) ; 
 unsigned char FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (struct tty_struct*) ; 
 scalar_t__ FUNC6 (struct tty_struct*) ; 
 scalar_t__ FUNC7 (struct tty_struct*) ; 
 scalar_t__ FUNC8 (struct tty_struct*) ; 
 scalar_t__ FUNC9 (struct tty_struct*) ; 
 scalar_t__ FUNC10 (struct tty_struct*) ; 
 unsigned char FUNC11 (struct tty_struct*) ; 
 unsigned char FUNC12 (struct tty_struct*) ; 
 scalar_t__ FUNC13 (struct tty_struct*) ; 
 scalar_t__ FUNC14 (struct tty_struct*) ; 
 scalar_t__ FUNC15 (struct tty_struct*) ; 
 scalar_t__ FUNC16 (struct tty_struct*) ; 
 scalar_t__ FUNC17 (struct tty_struct*) ; 
 scalar_t__ FUNC18 (size_t) ; 
 int N_TTY_BUF_SIZE ; 
 int /*<<< orphan*/  POLL_IN ; 
 unsigned char FUNC19 (struct tty_struct*) ; 
 unsigned char FUNC20 (struct tty_struct*) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTSTP ; 
 unsigned char FUNC21 (struct tty_struct*) ; 
 unsigned char FUNC22 (struct tty_struct*) ; 
 unsigned char FUNC23 (struct tty_struct*) ; 
 unsigned char FUNC24 (struct tty_struct*) ; 
 unsigned char __DISABLED_CHAR ; 
 int /*<<< orphan*/  FUNC25 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC26 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC27 (char,struct n_tty_data*) ; 
 int /*<<< orphan*/  FUNC28 (struct n_tty_data*) ; 
 int /*<<< orphan*/  FUNC29 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC30 (struct n_tty_data*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct tty_struct*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC33 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC34 (unsigned char,struct n_tty_data*) ; 
 unsigned char FUNC35 (struct n_tty_data*,size_t) ; 
 int /*<<< orphan*/  FUNC36 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC38 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC39 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC41(struct tty_struct *tty, unsigned char c)
{
	struct n_tty_data *ldata = tty->disc_data;

	if (FUNC9(tty)) {
		if (c == FUNC21(tty)) {
			FUNC38(tty);
			FUNC33(tty);
			return 0;
		}
		if (c == FUNC22(tty)) {
			FUNC39(tty);
			return 0;
		}
	}

	if (FUNC17(tty)) {
		if (c == FUNC4(tty)) {
			FUNC32(tty, SIGINT, c);
			return 0;
		} else if (c == FUNC19(tty)) {
			FUNC32(tty, SIGQUIT, c);
			return 0;
		} else if (c == FUNC23(tty)) {
			FUNC32(tty, SIGTSTP, c);
			return 0;
		}
	}

	if (tty->stopped && !tty->flow_stopped && FUNC9(tty) && FUNC8(tty)) {
		FUNC38(tty);
		FUNC33(tty);
	}

	if (c == '\r') {
		if (FUNC6(tty))
			return 0;
		if (FUNC5(tty))
			c = '\n';
	} else if (c == '\n' && FUNC7(tty))
		c = '\r';

	if (ldata->icanon) {
		if (c == FUNC3(tty) || c == FUNC11(tty) ||
		    (c == FUNC24(tty) && FUNC16(tty))) {
			FUNC29(c, tty);
			FUNC25(tty);
			return 0;
		}
		if (c == FUNC12(tty) && FUNC16(tty)) {
			ldata->lnext = 1;
			if (FUNC13(tty)) {
				FUNC30(ldata);
				if (FUNC14(tty)) {
					FUNC27('^', ldata);
					FUNC27('\b', ldata);
					FUNC25(tty);
				}
			}
			return 1;
		}
		if (c == FUNC20(tty) && FUNC13(tty) && FUNC16(tty)) {
			size_t tail = ldata->canon_head;

			FUNC30(ldata);
			FUNC26(c, tty);
			FUNC27('\n', ldata);
			while (FUNC18(tail) != FUNC18(ldata->read_head)) {
				FUNC26(FUNC35(ldata, tail), tty);
				tail++;
			}
			FUNC25(tty);
			return 0;
		}
		if (c == '\n') {
			if (FUNC13(tty) || FUNC15(tty)) {
				FUNC27('\n', ldata);
				FUNC25(tty);
			}
			goto handle_newline;
		}
		if (c == FUNC0(tty)) {
			c = __DISABLED_CHAR;
			goto handle_newline;
		}
		if ((c == FUNC2(tty)) ||
		    (c == FUNC1(tty) && FUNC16(tty))) {
			/*
			 * XXX are EOL_CHAR and EOL2_CHAR echoed?!?
			 */
			if (FUNC13(tty)) {
				/* Record the column of first canon char. */
				if (ldata->canon_head == ldata->read_head)
					FUNC28(ldata);
				FUNC26(c, tty);
				FUNC25(tty);
			}
			/*
			 * XXX does PARMRK doubling happen for
			 * EOL_CHAR and EOL2_CHAR?
			 */
			if (c == (unsigned char) '\377' && FUNC10(tty))
				FUNC34(c, ldata);

handle_newline:
			FUNC36(ldata->read_head & (N_TTY_BUF_SIZE - 1), ldata->read_flags);
			FUNC34(c, ldata);
			FUNC37(&ldata->canon_head, ldata->read_head);
			FUNC31(&tty->fasync, SIGIO, POLL_IN);
			FUNC40(&tty->read_wait, EPOLLIN);
			return 0;
		}
	}

	if (FUNC13(tty)) {
		FUNC30(ldata);
		if (c == '\n')
			FUNC27('\n', ldata);
		else {
			/* Record the column of first canon char. */
			if (ldata->canon_head == ldata->read_head)
				FUNC28(ldata);
			FUNC26(c, tty);
		}
		FUNC25(tty);
	}

	/* PARMRK doubling check */
	if (c == (unsigned char) '\377' && FUNC10(tty))
		FUNC34(c, ldata);

	FUNC34(c, ldata);
	return 0;
}