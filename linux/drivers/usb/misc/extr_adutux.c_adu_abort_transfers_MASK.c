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
struct adu_device {int /*<<< orphan*/  buflock; int /*<<< orphan*/  interrupt_out_urb; int /*<<< orphan*/  out_urb_finished; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  interrupt_in_urb; int /*<<< orphan*/  read_urb_finished; scalar_t__ disconnected; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct adu_device *dev)
{
	unsigned long flags;

	if (dev->disconnected)
		return;

	/* shutdown transfer */

	/* XXX Anchor these instead */
	FUNC0(&dev->buflock, flags);
	if (!dev->read_urb_finished) {
		FUNC1(&dev->buflock, flags);
		FUNC2(dev->interrupt_in_urb);
	} else
		FUNC1(&dev->buflock, flags);

	FUNC0(&dev->buflock, flags);
	if (!dev->out_urb_finished) {
		FUNC1(&dev->buflock, flags);
		FUNC3(dev->write_wait, dev->out_urb_finished,
			COMMAND_TIMEOUT);
		FUNC2(dev->interrupt_out_urb);
	} else
		FUNC1(&dev->buflock, flags);
}