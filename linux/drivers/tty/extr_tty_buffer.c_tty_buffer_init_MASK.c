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
struct tty_bufhead {int /*<<< orphan*/  mem_limit; int /*<<< orphan*/  work; int /*<<< orphan*/  priority; int /*<<< orphan*/  mem_used; int /*<<< orphan*/  free; int /*<<< orphan*/  sentinel; int /*<<< orphan*/ * tail; int /*<<< orphan*/ * head; int /*<<< orphan*/  lock; } ;
struct tty_port {struct tty_bufhead buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTYB_DEFAULT_MEM_LIMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flush_to_ldisc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct tty_port *port)
{
	struct tty_bufhead *buf = &port->buf;

	FUNC3(&buf->lock);
	FUNC4(&buf->sentinel, 0);
	buf->head = &buf->sentinel;
	buf->tail = &buf->sentinel;
	FUNC2(&buf->free);
	FUNC1(&buf->mem_used, 0);
	FUNC1(&buf->priority, 0);
	FUNC0(&buf->work, flush_to_ldisc);
	buf->mem_limit = TTYB_DEFAULT_MEM_LIMIT;
}