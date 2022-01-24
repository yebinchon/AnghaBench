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
struct n_tty_data {size_t echo_tail; size_t echo_commit; unsigned int canon_column; unsigned int column; } ;

/* Variables and functions */
 size_t ECHO_DISCARD_WATERMARK ; 
#define  ECHO_OP_ERASE_TAB 131 
#define  ECHO_OP_MOVE_BACK_COL 130 
#define  ECHO_OP_SET_CANON_COL 129 
#define  ECHO_OP_START 128 
 scalar_t__ FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int FUNC2 (unsigned char,struct tty_struct*,int) ; 
 int const FUNC3 (struct n_tty_data*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,unsigned char const) ; 
 int FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static size_t FUNC6(struct tty_struct *tty)
{
	struct n_tty_data *ldata = tty->disc_data;
	int	space, old_space;
	size_t tail;
	unsigned char c;

	old_space = space = FUNC5(tty);

	tail = ldata->echo_tail;
	while (FUNC0(ldata->echo_commit) != FUNC0(tail)) {
		c = FUNC3(ldata, tail);
		if (c == ECHO_OP_START) {
			unsigned char op;
			int no_space_left = 0;

			/*
			 * Since add_echo_byte() is called without holding
			 * output_lock, we might see only portion of multi-byte
			 * operation.
			 */
			if (FUNC0(ldata->echo_commit) == FUNC0(tail + 1))
				goto not_yet_stored;
			/*
			 * If the buffer byte is the start of a multi-byte
			 * operation, get the next byte, which is either the
			 * op code or a control character value.
			 */
			op = FUNC3(ldata, tail + 1);

			switch (op) {
				unsigned int num_chars, num_bs;

			case ECHO_OP_ERASE_TAB:
				if (FUNC0(ldata->echo_commit) == FUNC0(tail + 2))
					goto not_yet_stored;
				num_chars = FUNC3(ldata, tail + 2);

				/*
				 * Determine how many columns to go back
				 * in order to erase the tab.
				 * This depends on the number of columns
				 * used by other characters within the tab
				 * area.  If this (modulo 8) count is from
				 * the start of input rather than from a
				 * previous tab, we offset by canon column.
				 * Otherwise, tab spacing is normal.
				 */
				if (!(num_chars & 0x80))
					num_chars += ldata->canon_column;
				num_bs = 8 - (num_chars & 7);

				if (num_bs > space) {
					no_space_left = 1;
					break;
				}
				space -= num_bs;
				while (num_bs--) {
					FUNC4(tty, '\b');
					if (ldata->column > 0)
						ldata->column--;
				}
				tail += 3;
				break;

			case ECHO_OP_SET_CANON_COL:
				ldata->canon_column = ldata->column;
				tail += 2;
				break;

			case ECHO_OP_MOVE_BACK_COL:
				if (ldata->column > 0)
					ldata->column--;
				tail += 2;
				break;

			case ECHO_OP_START:
				/* This is an escaped echo op start code */
				if (!space) {
					no_space_left = 1;
					break;
				}
				FUNC4(tty, ECHO_OP_START);
				ldata->column++;
				space--;
				tail += 2;
				break;

			default:
				/*
				 * If the op is not a special byte code,
				 * it is a ctrl char tagged to be echoed
				 * as "^X" (where X is the letter
				 * representing the control char).
				 * Note that we must ensure there is
				 * enough space for the whole ctrl pair.
				 *
				 */
				if (space < 2) {
					no_space_left = 1;
					break;
				}
				FUNC4(tty, '^');
				FUNC4(tty, op ^ 0100);
				ldata->column += 2;
				space -= 2;
				tail += 2;
			}

			if (no_space_left)
				break;
		} else {
			if (FUNC1(tty)) {
				int retval = FUNC2(c, tty, space);
				if (retval < 0)
					break;
				space -= retval;
			} else {
				if (!space)
					break;
				FUNC4(tty, c);
				space -= 1;
			}
			tail += 1;
		}
	}

	/* If the echo buffer is nearly full (so that the possibility exists
	 * of echo overrun before the next commit), then discard enough
	 * data at the tail to prevent a subsequent overrun */
	while (ldata->echo_commit > tail &&
	       ldata->echo_commit - tail >= ECHO_DISCARD_WATERMARK) {
		if (FUNC3(ldata, tail) == ECHO_OP_START) {
			if (FUNC3(ldata, tail + 1) == ECHO_OP_ERASE_TAB)
				tail += 3;
			else
				tail += 2;
		} else
			tail++;
	}

 not_yet_stored:
	ldata->echo_tail = tail;
	return old_space - space;
}