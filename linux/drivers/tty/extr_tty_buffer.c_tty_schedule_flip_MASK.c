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
struct tty_bufhead {int /*<<< orphan*/  work; TYPE_1__* tail; } ;
struct tty_port {struct tty_bufhead buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  used; int /*<<< orphan*/  commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_unbound_wq ; 

void FUNC2(struct tty_port *port)
{
	struct tty_bufhead *buf = &port->buf;

	/* paired w/ acquire in flush_to_ldisc(); ensures
	 * flush_to_ldisc() sees buffer data.
	 */
	FUNC1(&buf->tail->commit, buf->tail->used);
	FUNC0(system_unbound_wq, &buf->work);
}