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
struct tty_bufhead {int /*<<< orphan*/  lock; int /*<<< orphan*/  priority; } ;
struct tty_port {struct tty_bufhead buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct tty_port *port)
{
	struct tty_bufhead *buf = &port->buf;

	FUNC0(&buf->priority);
	FUNC1(&buf->lock);
}