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
struct bq24257_state {int /*<<< orphan*/  power_good; int /*<<< orphan*/  fault; int /*<<< orphan*/  status; } ;
struct bq24257_device {int /*<<< orphan*/  charger; int /*<<< orphan*/  lock; struct bq24257_state state; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct bq24257_device*,struct bq24257_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct bq24257_device*,struct bq24257_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct bq24257_device*,struct bq24257_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *private)
{
	int ret;
	struct bq24257_device *bq = private;
	struct bq24257_state state;

	ret = FUNC0(bq, &state);
	if (ret < 0)
		return IRQ_HANDLED;

	if (!FUNC2(bq, &state))
		return IRQ_HANDLED;

	FUNC3(bq->dev, "irq(state changed): status/fault/pg = %d/%d/%d\n",
		state.status, state.fault, state.power_good);

	FUNC1(bq, &state);

	FUNC4(&bq->lock);
	bq->state = state;
	FUNC5(&bq->lock);

	FUNC6(bq->charger);

	return IRQ_HANDLED;
}