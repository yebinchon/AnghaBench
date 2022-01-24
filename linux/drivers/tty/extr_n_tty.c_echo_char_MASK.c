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
struct n_tty_data {int dummy; } ;

/* Variables and functions */
 unsigned char ECHO_OP_START ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,struct n_tty_data*) ; 
 scalar_t__ FUNC2 (unsigned char) ; 

__attribute__((used)) static void FUNC3(unsigned char c, struct tty_struct *tty)
{
	struct n_tty_data *ldata = tty->disc_data;

	if (c == ECHO_OP_START) {
		FUNC1(ECHO_OP_START, ldata);
		FUNC1(ECHO_OP_START, ldata);
	} else {
		if (FUNC0(tty) && FUNC2(c) && c != '\t')
			FUNC1(ECHO_OP_START, ldata);
		FUNC1(c, ldata);
	}
}