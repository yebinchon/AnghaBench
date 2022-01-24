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
struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {size_t read_head; size_t canon_head; int erasing; } ;

/* Variables and functions */
 unsigned char FUNC0 (struct tty_struct*) ; 
 unsigned char FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 scalar_t__ FUNC7 (struct tty_struct*) ; 
 scalar_t__ FUNC8 (size_t) ; 
 unsigned char FUNC9 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC11 (char,struct n_tty_data*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,int,struct n_tty_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct n_tty_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct n_tty_data*) ; 
 scalar_t__ FUNC15 (unsigned char,struct tty_struct*) ; 
 scalar_t__ FUNC16 (unsigned char) ; 
 scalar_t__ FUNC17 (unsigned char) ; 
 char FUNC18 (struct n_tty_data*,size_t) ; 

__attribute__((used)) static void FUNC19(unsigned char c, struct tty_struct *tty)
{
	struct n_tty_data *ldata = tty->disc_data;
	enum { ERASE, WERASE, KILL } kill_type;
	size_t head;
	size_t cnt;
	int seen_alnums;

	if (ldata->read_head == ldata->canon_head) {
		/* process_output('\a', tty); */ /* what do you think? */
		return;
	}
	if (c == FUNC0(tty))
		kill_type = ERASE;
	else if (c == FUNC9(tty))
		kill_type = WERASE;
	else {
		if (!FUNC2(tty)) {
			ldata->read_head = ldata->canon_head;
			return;
		}
		if (!FUNC5(tty) || !FUNC6(tty) || !FUNC4(tty)) {
			ldata->read_head = ldata->canon_head;
			FUNC14(ldata);
			FUNC10(FUNC1(tty), tty);
			/* Add a newline if ECHOK is on and ECHOKE is off. */
			if (FUNC5(tty))
				FUNC11('\n', ldata);
			return;
		}
		kill_type = KILL;
	}

	seen_alnums = 0;
	while (FUNC8(ldata->read_head) != FUNC8(ldata->canon_head)) {
		head = ldata->read_head;

		/* erase a single possibly multibyte character */
		do {
			head--;
			c = FUNC18(ldata, head);
		} while (FUNC15(c, tty) &&
			 FUNC8(head) != FUNC8(ldata->canon_head));

		/* do not partially erase */
		if (FUNC15(c, tty))
			break;

		if (kill_type == WERASE) {
			/* Equivalent to BSD's ALTWERASE. */
			if (FUNC16(c) || c == '_')
				seen_alnums++;
			else if (seen_alnums)
				break;
		}
		cnt = ldata->read_head - head;
		ldata->read_head = head;
		if (FUNC2(tty)) {
			if (FUNC7(tty)) {
				if (!ldata->erasing) {
					FUNC11('\\', ldata);
					ldata->erasing = 1;
				}
				/* if cnt > 1, output a multi-byte character */
				FUNC10(c, tty);
				while (--cnt > 0) {
					head++;
					FUNC11(FUNC18(ldata, head), ldata);
					FUNC13(ldata);
				}
			} else if (kill_type == ERASE && !FUNC4(tty)) {
				FUNC10(FUNC0(tty), tty);
			} else if (c == '\t') {
				unsigned int num_chars = 0;
				int after_tab = 0;
				size_t tail = ldata->read_head;

				/*
				 * Count the columns used for characters
				 * since the start of input or after a
				 * previous tab.
				 * This info is used to go back the correct
				 * number of columns.
				 */
				while (FUNC8(tail) != FUNC8(ldata->canon_head)) {
					tail--;
					c = FUNC18(ldata, tail);
					if (c == '\t') {
						after_tab = 1;
						break;
					} else if (FUNC17(c)) {
						if (FUNC3(tty))
							num_chars += 2;
					} else if (!FUNC15(c, tty)) {
						num_chars++;
					}
				}
				FUNC12(num_chars, after_tab, ldata);
			} else {
				if (FUNC17(c) && FUNC3(tty)) {
					FUNC11('\b', ldata);
					FUNC11(' ', ldata);
					FUNC11('\b', ldata);
				}
				if (!FUNC17(c) || FUNC3(tty)) {
					FUNC11('\b', ldata);
					FUNC11(' ', ldata);
					FUNC11('\b', ldata);
				}
			}
		}
		if (kill_type == ERASE)
			break;
	}
	if (ldata->read_head == ldata->canon_head && FUNC2(tty))
		FUNC14(ldata);
}