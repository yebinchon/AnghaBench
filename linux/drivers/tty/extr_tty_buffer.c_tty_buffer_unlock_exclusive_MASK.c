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
struct tty_bufhead {int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  priority; TYPE_1__* head; } ;
struct tty_port {struct tty_bufhead buf; } ;
struct TYPE_2__ {scalar_t__ commit; scalar_t__ read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_unbound_wq ; 

void FUNC3(struct tty_port *port)
{
	struct tty_bufhead *buf = &port->buf;
	int restart;

	restart = buf->head->commit != buf->head->read;

	FUNC0(&buf->priority);
	FUNC1(&buf->lock);
	if (restart)
		FUNC2(system_unbound_wq, &buf->work);
}