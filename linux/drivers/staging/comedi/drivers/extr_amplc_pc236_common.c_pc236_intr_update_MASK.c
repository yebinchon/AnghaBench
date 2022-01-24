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
struct pc236_private {int enable_irq; } ;
struct pc236_board {int /*<<< orphan*/  (* intr_update_cb ) (struct comedi_device*,int) ;} ;
struct comedi_device {int /*<<< orphan*/  spinlock; struct pc236_private* private; struct pc236_board* board_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, bool enable)
{
	const struct pc236_board *board = dev->board_ptr;
	struct pc236_private *devpriv = dev->private;
	unsigned long flags;

	FUNC0(&dev->spinlock, flags);
	devpriv->enable_irq = enable;
	if (board->intr_update_cb)
		board->intr_update_cb(dev, enable);
	FUNC1(&dev->spinlock, flags);
}