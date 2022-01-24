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
struct tty_bufhead {int /*<<< orphan*/  free; int /*<<< orphan*/  mem_used; } ;
struct tty_port {struct tty_bufhead buf; } ;
struct tty_buffer {scalar_t__ size; int /*<<< orphan*/  free; } ;

/* Variables and functions */
 scalar_t__ MIN_TTYB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tty_port *port, struct tty_buffer *b)
{
	struct tty_bufhead *buf = &port->buf;

	/* Dumb strategy for now - should keep some stats */
	FUNC0(FUNC1(b->size, &buf->mem_used) < 0);

	if (b->size > MIN_TTYB_SIZE)
		FUNC2(b);
	else if (b->size > 0)
		FUNC3(&b->free, &buf->free);
}