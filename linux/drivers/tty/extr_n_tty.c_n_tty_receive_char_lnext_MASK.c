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
struct n_tty_data {scalar_t__ lnext; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 char TTY_NORMAL ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,unsigned char,char) ; 
 unsigned char FUNC6 (unsigned char) ; 

__attribute__((used)) static void
FUNC7(struct tty_struct *tty, unsigned char c, char flag)
{
	struct n_tty_data *ldata = tty->disc_data;

	ldata->lnext = 0;
	if (FUNC3(flag == TTY_NORMAL)) {
		if (FUNC0(tty))
			c &= 0x7f;
		if (FUNC1(tty) && FUNC2(tty))
			c = FUNC6(c);
		FUNC4(tty, c);
	} else
		FUNC5(tty, c, flag);
}