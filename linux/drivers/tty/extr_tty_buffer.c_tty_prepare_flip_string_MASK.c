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
struct TYPE_2__ {struct tty_buffer* tail; } ;
struct tty_port {TYPE_1__ buf; } ;
struct tty_buffer {int used; int flags; } ;

/* Variables and functions */
 int TTYB_NORMAL ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 int FUNC0 (struct tty_port*,size_t,int) ; 
 unsigned char* FUNC1 (struct tty_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_buffer*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct tty_port *port, unsigned char **chars,
		size_t size)
{
	int space = FUNC0(port, size, TTYB_NORMAL);
	if (FUNC3(space)) {
		struct tty_buffer *tb = port->buf.tail;
		*chars = FUNC1(tb, tb->used);
		if (~tb->flags & TTYB_NORMAL)
			FUNC4(FUNC2(tb, tb->used), TTY_NORMAL, space);
		tb->used += space;
	}
	return space;
}