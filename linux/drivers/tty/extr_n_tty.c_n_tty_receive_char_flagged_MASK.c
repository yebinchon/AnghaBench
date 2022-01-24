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
#define  TTY_BREAK 131 
#define  TTY_FRAME 130 
#define  TTY_OVERRUN 129 
#define  TTY_PARITY 128 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,char*,char) ; 

__attribute__((used)) static void
FUNC4(struct tty_struct *tty, unsigned char c, char flag)
{
	switch (flag) {
	case TTY_BREAK:
		FUNC0(tty);
		break;
	case TTY_PARITY:
	case TTY_FRAME:
		FUNC2(tty, c);
		break;
	case TTY_OVERRUN:
		FUNC1(tty);
		break;
	default:
		FUNC3(tty, "unknown flag %d\n", flag);
		break;
	}
}