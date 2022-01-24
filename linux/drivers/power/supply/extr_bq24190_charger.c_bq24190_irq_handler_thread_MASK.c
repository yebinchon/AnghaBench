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
struct bq24190_dev_info {int irq_event; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct bq24190_dev_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct bq24190_dev_info *bdi = data;
	int error;

	bdi->irq_event = true;
	error = FUNC2(bdi->dev);
	if (error < 0) {
		FUNC1(bdi->dev, "pm_runtime_get failed: %i\n", error);
		FUNC5(bdi->dev);
		return IRQ_NONE;
	}
	FUNC0(bdi);
	FUNC3(bdi->dev);
	FUNC4(bdi->dev);
	bdi->irq_event = false;

	return IRQ_HANDLED;
}