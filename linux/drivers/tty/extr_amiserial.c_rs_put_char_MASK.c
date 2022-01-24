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
struct tty_struct {int /*<<< orphan*/  name; struct serial_state* driver_data; } ;
struct TYPE_2__ {unsigned char* buf; int head; int /*<<< orphan*/  tail; } ;
struct serial_state {TYPE_1__ xmit; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int SERIAL_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (struct serial_state*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty, unsigned char ch)
{
	struct serial_state *info;
	unsigned long flags;

	info = tty->driver_data;

	if (FUNC3(info, tty->name, "rs_put_char"))
		return 0;

	if (!info->xmit.buf)
		return 0;

	FUNC2(flags);
	if (FUNC0(info->xmit.head,
		       info->xmit.tail,
		       SERIAL_XMIT_SIZE) == 0) {
		FUNC1(flags);
		return 0;
	}

	info->xmit.buf[info->xmit.head++] = ch;
	info->xmit.head &= SERIAL_XMIT_SIZE-1;
	FUNC1(flags);
	return 1;
}