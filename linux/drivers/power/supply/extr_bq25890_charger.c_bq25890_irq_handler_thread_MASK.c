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
struct bq25890_state {int dummy; } ;
struct bq25890_device {int /*<<< orphan*/  charger; int /*<<< orphan*/  lock; struct bq25890_state state; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct bq25890_device*,struct bq25890_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct bq25890_device*,struct bq25890_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct bq25890_device*,struct bq25890_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *private)
{
	struct bq25890_device *bq = private;
	int ret;
	struct bq25890_state state;

	ret = FUNC0(bq, &state);
	if (ret < 0)
		goto handled;

	if (!FUNC2(bq, &state))
		goto handled;

	FUNC1(bq, &state);

	FUNC3(&bq->lock);
	bq->state = state;
	FUNC4(&bq->lock);

	FUNC5(bq->charger);

handled:
	return IRQ_HANDLED;
}