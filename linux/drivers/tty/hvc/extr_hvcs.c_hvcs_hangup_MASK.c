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
struct tty_struct {struct hvcs_struct* driver_data; } ;
struct TYPE_4__ {int count; int /*<<< orphan*/ * tty; } ;
struct hvcs_struct {TYPE_2__ port; int /*<<< orphan*/  lock; TYPE_1__* vdev; scalar_t__ chars_in_buffer; int /*<<< orphan*/ * buffer; scalar_t__ todo_mask; } ;
struct TYPE_3__ {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  HVCS_BUFF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,struct hvcs_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct tty_struct * tty)
{
	struct hvcs_struct *hvcsd = tty->driver_data;
	unsigned long flags;
	int temp_open_count;
	int irq;

	FUNC2(&hvcsd->lock, flags);
	/* Preserve this so that we know how many kref refs to put */
	temp_open_count = hvcsd->port.count;

	/*
	 * Don't kref put inside the spinlock because the destruction
	 * callback may use the spinlock and it may get called before the
	 * spinlock has been released.
	 */
	FUNC5(hvcsd->vdev);

	hvcsd->todo_mask = 0;

	/* I don't think the tty needs the hvcs_struct pointer after a hangup */
	tty->driver_data = NULL;
	hvcsd->port.tty = NULL;

	hvcsd->port.count = 0;

	/* This will drop any buffered data on the floor which is OK in a hangup
	 * scenario. */
	FUNC1(&hvcsd->buffer[0], 0x00, HVCS_BUFF_LEN);
	hvcsd->chars_in_buffer = 0;

	irq = hvcsd->vdev->irq;

	FUNC3(&hvcsd->lock, flags);

	FUNC0(irq, hvcsd);

	/*
	 * We need to kref_put() for every open_count we have since the
	 * tty_hangup() function doesn't invoke a close per open connection on a
	 * non-console device.
	 */
	while(temp_open_count) {
		--temp_open_count;
		/*
		 * The final put will trigger destruction of the hvcs_struct.
		 * NOTE:  If this hangup was signaled from user space then the
		 * final put will never happen.
		 */
		FUNC4(&hvcsd->port);
	}
}