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
struct tty_struct {int dummy; } ;

/* Variables and functions */
#define  CTRLCHAR_CTRL 130 
 unsigned int CTRLCHAR_MASK ; 
#define  CTRLCHAR_NONE 129 
#define  CTRLCHAR_SYSRQ 128 
 int /*<<< orphan*/  TTY_NORMAL ; 
 unsigned int FUNC0 (unsigned char*,unsigned int,struct tty_struct*) ; 
 int /*<<< orphan*/  sclp_port ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 struct tty_struct* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(unsigned char* buf, unsigned int count)
{
	struct tty_struct *tty = FUNC6(&sclp_port);
	unsigned int cchar;

	/*
	 * If this tty driver is currently closed
	 * then throw the received input away.
	 */
	if (tty == NULL)
		return;
	cchar = FUNC0(buf, count, tty);
	switch (cchar & CTRLCHAR_MASK) {
	case CTRLCHAR_SYSRQ:
		break;
	case CTRLCHAR_CTRL:
		FUNC3(&sclp_port, cchar, TTY_NORMAL);
		FUNC2(&sclp_port);
		break;
	case CTRLCHAR_NONE:
		/* send (normal) input to line discipline */
		if (count < 2 ||
		    (FUNC1((const char *) buf + count - 2, "^n", 2) &&
		     FUNC1((const char *) buf + count - 2, "\252n", 2))) {
			/* add the auto \n */
			FUNC4(&sclp_port, buf, count);
			FUNC3(&sclp_port, '\n', TTY_NORMAL);
		} else
			FUNC4(&sclp_port, buf, count - 2);
		FUNC2(&sclp_port);
		break;
	}
	FUNC5(tty);
}