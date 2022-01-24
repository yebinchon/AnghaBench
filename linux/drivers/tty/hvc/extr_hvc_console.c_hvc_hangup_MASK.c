#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {struct hvc_struct* driver_data; } ;
struct TYPE_4__ {scalar_t__ count; int /*<<< orphan*/  lock; } ;
struct hvc_struct {int /*<<< orphan*/  data; TYPE_1__* ops; scalar_t__ n_outbuf; TYPE_2__ port; int /*<<< orphan*/  tty_resize; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* notifier_hangup ) (struct hvc_struct*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct hvc_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct hvc_struct *hp = tty->driver_data;
	unsigned long flags;

	if (!hp)
		return;

	/* cancel pending tty resize work */
	FUNC0(&hp->tty_resize);

	FUNC1(&hp->port.lock, flags);

	/*
	 * The N_TTY line discipline has problems such that in a close vs
	 * open->hangup case this can be called after the final close so prevent
	 * that from happening for now.
	 */
	if (hp->port.count <= 0) {
		FUNC2(&hp->port.lock, flags);
		return;
	}

	hp->port.count = 0;
	FUNC2(&hp->port.lock, flags);
	FUNC4(&hp->port, NULL);

	hp->n_outbuf = 0;

	if (hp->ops->notifier_hangup)
		hp->ops->notifier_hangup(hp, hp->data);
}