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
struct tty_struct {int /*<<< orphan*/  read_wait; int /*<<< orphan*/  fasync; TYPE_1__* ops; scalar_t__ closing; struct n_tty_data* disc_data; } ;
struct n_tty_data {int /*<<< orphan*/  read_head; int /*<<< orphan*/  commit_head; scalar_t__ icanon; scalar_t__ lnext; scalar_t__ raw; scalar_t__ real_raw; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_chars ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 
 scalar_t__ FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 char TTY_NORMAL ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*,unsigned char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*,unsigned char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*,unsigned char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_struct*,unsigned char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_struct*,unsigned char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_struct*,int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC13 (struct n_tty_data*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct tty_struct *tty, const unsigned char *cp,
			  char *fp, int count)
{
	struct n_tty_data *ldata = tty->disc_data;
	bool preops = FUNC0(tty) || (FUNC1(tty) && FUNC4(tty));

	if (ldata->real_raw)
		FUNC10(tty, cp, fp, count);
	else if (ldata->raw || (FUNC3(tty) && !preops))
		FUNC9(tty, cp, fp, count);
	else if (tty->closing && !FUNC3(tty))
		FUNC7(tty, cp, fp, count);
	else {
		if (ldata->lnext) {
			char flag = TTY_NORMAL;

			if (fp)
				flag = *fp++;
			FUNC12(tty, *cp++, flag);
			count--;
		}

		if (!preops && !FUNC2(tty))
			FUNC8(tty, cp, fp, count);
		else
			FUNC11(tty, cp, fp, count);

		FUNC5(tty);
		if (tty->ops->flush_chars)
			tty->ops->flush_chars(tty);
	}

	if (ldata->icanon && !FUNC3(tty))
		return;

	/* publish read_head to consumer */
	FUNC14(&ldata->commit_head, ldata->read_head);

	if (FUNC13(ldata)) {
		FUNC6(&tty->fasync, SIGIO, POLL_IN);
		FUNC16(&tty->read_wait, EPOLLIN);
	}
}