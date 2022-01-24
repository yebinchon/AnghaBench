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
struct cros_ec_device {int /*<<< orphan*/  event_notifier; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cros_ec_device*) ; 
 int FUNC1 (struct cros_ec_device*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct cros_ec_device *ec_dev = data;
	bool wake_event = true;
	int ret;

	ret = FUNC1(ec_dev, &wake_event);

	/*
	 * Signal only if wake host events or any interrupt if
	 * cros_ec_get_next_event() returned an error (default value for
	 * wake_event is true)
	 */
	if (wake_event && FUNC2(ec_dev->dev))
		FUNC3(ec_dev->dev, 0);

	if (ret > 0)
		FUNC0(&ec_dev->event_notifier,
					     0, ec_dev);
	return IRQ_HANDLED;
}