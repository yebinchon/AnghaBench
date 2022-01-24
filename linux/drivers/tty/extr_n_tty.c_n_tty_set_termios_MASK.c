#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int c_lflag; } ;
struct tty_struct {int /*<<< orphan*/  read_wait; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  flow_stopped; TYPE_2__* driver; TYPE_1__ termios; struct n_tty_data* disc_data; } ;
struct n_tty_data {int line_start; int read_tail; int canon_head; int push; int read_head; int commit_head; int icanon; int raw; int real_raw; int /*<<< orphan*/  char_map; scalar_t__ lnext; scalar_t__ erasing; int /*<<< orphan*/  read_flags; } ;
struct ktermios {int c_lflag; int c_iflag; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 char FUNC0 (struct tty_struct*) ; 
 char FUNC1 (struct tty_struct*) ; 
 char FUNC2 (struct tty_struct*) ; 
 char FUNC3 (struct tty_struct*) ; 
 int EXTPROC ; 
 int ICANON ; 
 char FUNC4 (struct tty_struct*) ; 
 int IXON ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 scalar_t__ FUNC6 (struct tty_struct*) ; 
 scalar_t__ FUNC7 (struct tty_struct*) ; 
 scalar_t__ FUNC8 (struct tty_struct*) ; 
 scalar_t__ FUNC9 (struct tty_struct*) ; 
 scalar_t__ FUNC10 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_struct*) ; 
 scalar_t__ FUNC12 (struct tty_struct*) ; 
 scalar_t__ FUNC13 (struct tty_struct*) ; 
 scalar_t__ FUNC14 (struct tty_struct*) ; 
 scalar_t__ FUNC15 (struct tty_struct*) ; 
 char FUNC16 (struct tty_struct*) ; 
 char FUNC17 (struct tty_struct*) ; 
 scalar_t__ FUNC18 (struct tty_struct*) ; 
 scalar_t__ FUNC19 (struct tty_struct*) ; 
 scalar_t__ FUNC20 (struct tty_struct*) ; 
 scalar_t__ FUNC21 (struct tty_struct*) ; 
 int N_TTY_BUF_SIZE ; 
 char FUNC22 (struct tty_struct*) ; 
 char FUNC23 (struct tty_struct*) ; 
 char FUNC24 (struct tty_struct*) ; 
 char FUNC25 (struct tty_struct*) ; 
 char FUNC26 (struct tty_struct*) ; 
 int TTY_DRIVER_REAL_RAW ; 
 char FUNC27 (struct tty_struct*) ; 
 int /*<<< orphan*/  __DISABLED_CHAR ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC31 (struct n_tty_data*) ; 
 int /*<<< orphan*/  FUNC32 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC35(struct tty_struct *tty, struct ktermios *old)
{
	struct n_tty_data *ldata = tty->disc_data;

	if (!old || (old->c_lflag ^ tty->termios.c_lflag) & (ICANON | EXTPROC)) {
		FUNC28(ldata->read_flags, N_TTY_BUF_SIZE);
		ldata->line_start = ldata->read_tail;
		if (!FUNC19(tty) || !FUNC31(ldata)) {
			ldata->canon_head = ldata->read_tail;
			ldata->push = 0;
		} else {
			FUNC32((ldata->read_head - 1) & (N_TTY_BUF_SIZE - 1),
				ldata->read_flags);
			ldata->canon_head = ldata->read_head;
			ldata->push = 1;
		}
		ldata->commit_head = ldata->read_head;
		ldata->erasing = 0;
		ldata->lnext = 0;
	}

	ldata->icanon = (FUNC19(tty) != 0);

	if (FUNC12(tty) || FUNC13(tty) || FUNC8(tty) ||
	    FUNC6(tty) || FUNC10(tty) || FUNC19(tty) ||
	    FUNC14(tty) || FUNC21(tty) || FUNC18(tty) ||
	    FUNC15(tty)) {
		FUNC28(ldata->char_map, 256);

		if (FUNC8(tty) || FUNC6(tty))
			FUNC32('\r', ldata->char_map);
		if (FUNC10(tty))
			FUNC32('\n', ldata->char_map);

		if (FUNC19(tty)) {
			FUNC32(FUNC3(tty), ldata->char_map);
			FUNC32(FUNC16(tty), ldata->char_map);
			FUNC32(FUNC0(tty), ldata->char_map);
			FUNC32('\n', ldata->char_map);
			FUNC32(FUNC2(tty), ldata->char_map);
			if (FUNC20(tty)) {
				FUNC32(FUNC27(tty), ldata->char_map);
				FUNC32(FUNC17(tty), ldata->char_map);
				FUNC32(FUNC1(tty), ldata->char_map);
				if (FUNC18(tty))
					FUNC32(FUNC23(tty),
						ldata->char_map);
			}
		}
		if (FUNC14(tty)) {
			FUNC32(FUNC24(tty), ldata->char_map);
			FUNC32(FUNC25(tty), ldata->char_map);
		}
		if (FUNC21(tty)) {
			FUNC32(FUNC4(tty), ldata->char_map);
			FUNC32(FUNC22(tty), ldata->char_map);
			FUNC32(FUNC26(tty), ldata->char_map);
		}
		FUNC29(__DISABLED_CHAR, ldata->char_map);
		ldata->raw = 0;
		ldata->real_raw = 0;
	} else {
		ldata->raw = 1;
		if ((FUNC7(tty) || (!FUNC5(tty) && !FUNC15(tty))) &&
		    (FUNC9(tty) || !FUNC11(tty)) &&
		    (tty->driver->flags & TTY_DRIVER_REAL_RAW))
			ldata->real_raw = 1;
		else
			ldata->real_raw = 0;
	}
	/*
	 * Fix tty hang when I_IXON(tty) is cleared, but the tty
	 * been stopped by STOP_CHAR(tty) before it.
	 */
	if (!FUNC14(tty) && old && (old->c_iflag & IXON) && !tty->flow_stopped) {
		FUNC33(tty);
		FUNC30(tty);
	}

	/* The termios change make the tty ready for I/O */
	FUNC34(&tty->write_wait);
	FUNC34(&tty->read_wait);
}