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
struct bq24257_device {int /*<<< orphan*/ * pg; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ24257_PG_GPIO ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct bq24257_device *bq)
{
	bq->pg = FUNC6(bq->dev, BQ24257_PG_GPIO, GPIOD_IN);

	if (FUNC1(bq->pg) == -EPROBE_DEFER) {
		FUNC5(bq->dev, "probe retry requested for PG pin\n");
		return;
	} else if (FUNC0(bq->pg)) {
		FUNC4(bq->dev, "error probing PG pin\n");
		bq->pg = NULL;
		return;
	}

	if (bq->pg)
		FUNC3(bq->dev, "probed PG pin = %d\n", FUNC2(bq->pg));
}