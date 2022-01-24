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
struct tty_struct {int /*<<< orphan*/  termios_rwsem; int /*<<< orphan*/  flags; scalar_t__ fasync; int /*<<< orphan*/  write_wait; TYPE_3__* ops; struct n_tty_data* disc_data; TYPE_2__* link; } ;
struct n_tty_data {int /*<<< orphan*/  output_lock; } ;
struct file {TYPE_1__* f_op; } ;
typedef  int ssize_t ;
struct TYPE_6__ {int (* write ) (struct tty_struct*,unsigned char const*,size_t) ;int /*<<< orphan*/  (* flush_chars ) (struct tty_struct*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  count; } ;
struct TYPE_4__ {scalar_t__ write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EIO ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 scalar_t__ FUNC8 (int,struct tty_struct*) ; 
 int FUNC9 (struct tty_struct*,unsigned char const*,size_t) ; 
 scalar_t__ redirected_tty_write ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*) ; 
 int FUNC14 (struct tty_struct*,unsigned char const*,size_t) ; 
 int FUNC15 (struct tty_struct*) ; 
 scalar_t__ FUNC16 (struct file*) ; 
 scalar_t__ FUNC17 (struct tty_struct*,struct file*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static ssize_t FUNC20(struct tty_struct *tty, struct file *file,
			   const unsigned char *buf, size_t nr)
{
	const unsigned char *b = buf;
	FUNC0(wait, woken_wake_function);
	int c;
	ssize_t retval = 0;

	/* Job control check -- must be done at start (POSIX.1 7.1.1.4). */
	if (FUNC1(tty) && file->f_op->write != redirected_tty_write) {
		retval = FUNC15(tty);
		if (retval)
			return retval;
	}

	FUNC4(&tty->termios_rwsem);

	/* Write out any echoed characters that are still pending */
	FUNC7(tty);

	FUNC3(&tty->write_wait, &wait);
	while (1) {
		if (FUNC12(current)) {
			retval = -ERESTARTSYS;
			break;
		}
		if (FUNC16(file) || (tty->link && !tty->link->count)) {
			retval = -EIO;
			break;
		}
		if (FUNC2(tty)) {
			while (nr > 0) {
				ssize_t num = FUNC9(tty, b, nr);
				if (num < 0) {
					if (num == -EAGAIN)
						break;
					retval = num;
					goto break_out;
				}
				b += num;
				nr -= num;
				if (nr == 0)
					break;
				c = *b;
				if (FUNC8(c, tty) < 0)
					break;
				b++; nr--;
			}
			if (tty->ops->flush_chars)
				tty->ops->flush_chars(tty);
		} else {
			struct n_tty_data *ldata = tty->disc_data;

			while (nr > 0) {
				FUNC5(&ldata->output_lock);
				c = tty->ops->write(tty, b, nr);
				FUNC6(&ldata->output_lock);
				if (c < 0) {
					retval = c;
					goto break_out;
				}
				if (!c)
					break;
				b += c;
				nr -= c;
			}
		}
		if (!nr)
			break;
		if (FUNC17(tty, file)) {
			retval = -EAGAIN;
			break;
		}
		FUNC18(&tty->termios_rwsem);

		FUNC19(&wait, TASK_INTERRUPTIBLE, MAX_SCHEDULE_TIMEOUT);

		FUNC4(&tty->termios_rwsem);
	}
break_out:
	FUNC10(&tty->write_wait, &wait);
	if (nr && tty->fasync)
		FUNC11(TTY_DO_WRITE_WAKEUP, &tty->flags);
	FUNC18(&tty->termios_rwsem);
	return (b - buf) ? b - buf : retval;
}