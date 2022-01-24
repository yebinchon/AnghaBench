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
struct bq25890_state {int /*<<< orphan*/  online; } ;
struct bq25890_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; struct bq25890_state state; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_CONV_START ; 
 int FUNC0 (struct bq25890_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bq25890_device *bq,
					struct bq25890_state *new_state)
{
	int ret;
	struct bq25890_state old_state;

	FUNC2(&bq->lock);
	old_state = bq->state;
	FUNC3(&bq->lock);

	if (!new_state->online) {			     /* power removed */
		/* disable ADC */
		ret = FUNC0(bq, F_CONV_START, 0);
		if (ret < 0)
			goto error;
	} else if (!old_state.online) {			    /* power inserted */
		/* enable ADC, to have control of charge current/voltage */
		ret = FUNC0(bq, F_CONV_START, 1);
		if (ret < 0)
			goto error;
	}

	return;

error:
	FUNC1(bq->dev, "Error communicating with the chip.\n");
}