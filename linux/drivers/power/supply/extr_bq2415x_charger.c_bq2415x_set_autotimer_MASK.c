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
struct bq2415x_device {int autotimer; int /*<<< orphan*/  work; int /*<<< orphan*/ * timer_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ2415X_TIMER_RESET ; 
 int BQ2415X_TIMER_TIMEOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct bq2415x_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bq2415x_timer_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(struct bq2415x_device *bq, int state)
{
	FUNC2(&bq2415x_timer_mutex);

	if (bq->autotimer == state) {
		FUNC3(&bq2415x_timer_mutex);
		return;
	}

	bq->autotimer = state;

	if (state) {
		FUNC4(&bq->work, BQ2415X_TIMER_TIMEOUT * HZ);
		FUNC0(bq, BQ2415X_TIMER_RESET);
		bq->timer_error = NULL;
	} else {
		FUNC1(&bq->work);
	}

	FUNC3(&bq2415x_timer_mutex);
}