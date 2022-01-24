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
struct sc27xx_fgu_data {int bat_present; int /*<<< orphan*/  battery; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  gpiod; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct sc27xx_fgu_data *data = dev_id;
	int state;

	FUNC3(&data->lock);

	state = FUNC2(data->gpiod);
	if (state < 0) {
		FUNC1(data->dev, "failed to get gpio state\n");
		FUNC4(&data->lock);
		return FUNC0(state);
	}

	data->bat_present = !!state;

	FUNC4(&data->lock);

	FUNC5(data->battery);
	return IRQ_HANDLED;
}