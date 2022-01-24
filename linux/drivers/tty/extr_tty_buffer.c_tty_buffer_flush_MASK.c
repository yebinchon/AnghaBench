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
struct tty_struct {struct tty_port* port; } ;
struct tty_bufhead {int /*<<< orphan*/  lock; int /*<<< orphan*/  priority; struct tty_buffer* head; } ;
struct tty_port {struct tty_bufhead buf; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct tty_buffer {int /*<<< orphan*/  commit; int /*<<< orphan*/  read; int /*<<< orphan*/  next; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_buffer ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tty_buffer* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,struct tty_buffer*) ; 

void FUNC7(struct tty_struct *tty, struct tty_ldisc *ld)
{
	struct tty_port *port = tty->port;
	struct tty_bufhead *buf = &port->buf;
	struct tty_buffer *next;

	FUNC1(&buf->priority);

	FUNC2(&buf->lock);
	/* paired w/ release in __tty_buffer_request_room; ensures there are
	 * no pending memory accesses to the freed buffer
	 */
	while ((next = FUNC4(&buf->head->next)) != NULL) {
		FUNC6(port, buf->head);
		buf->head = next;
	}
	buf->head->read = buf->head->commit;

	if (ld && ld->ops->flush_buffer)
		ld->ops->flush_buffer(tty);

	FUNC0(&buf->priority);
	FUNC3(&buf->lock);
}