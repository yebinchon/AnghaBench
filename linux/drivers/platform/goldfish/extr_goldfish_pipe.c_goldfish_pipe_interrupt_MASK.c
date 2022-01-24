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
typedef  scalar_t__ u32 ;
struct goldfish_pipe_dev {int /*<<< orphan*/  irq_tasklet; int /*<<< orphan*/  lock; TYPE_2__* buffers; scalar_t__ base; int /*<<< orphan*/ * magic; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {TYPE_1__* signalled_pipe_buffers; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ MAX_SIGNALLED_PIPES ; 
 scalar_t__ PIPE_REG_GET_SIGNALLED ; 
 int /*<<< orphan*/  goldfish_pipe_device_deinit ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct goldfish_pipe_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	u32 count;
	u32 i;
	unsigned long flags;
	struct goldfish_pipe_dev *dev = dev_id;

	if (dev->magic != &goldfish_pipe_device_deinit)
		return IRQ_NONE;

	/* Request the signalled pipes from the device */
	FUNC2(&dev->lock, flags);

	count = FUNC0(dev->base + PIPE_REG_GET_SIGNALLED);
	if (count == 0) {
		FUNC3(&dev->lock, flags);
		return IRQ_NONE;
	}
	if (count > MAX_SIGNALLED_PIPES)
		count = MAX_SIGNALLED_PIPES;

	for (i = 0; i < count; ++i)
		FUNC1(dev,
			dev->buffers->signalled_pipe_buffers[i].id,
			dev->buffers->signalled_pipe_buffers[i].flags);

	FUNC3(&dev->lock, flags);

	FUNC4(&dev->irq_tasklet);
	return IRQ_HANDLED;
}