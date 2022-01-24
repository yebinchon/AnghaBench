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
struct bq2415x_device {char const* timer_error; scalar_t__ automode; int /*<<< orphan*/  dev; TYPE_2__* charger; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ2415X_MODE_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct bq2415x_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bq2415x_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(struct bq2415x_device *bq, const char *msg)
{
	bq->timer_error = msg;
	FUNC3(&bq->charger->dev.kobj, NULL, "timer");
	FUNC2(bq->dev, "%s\n", msg);
	if (bq->automode > 0)
		bq->automode = 0;
	FUNC1(bq, BQ2415X_MODE_OFF);
	FUNC0(bq, 0);
}