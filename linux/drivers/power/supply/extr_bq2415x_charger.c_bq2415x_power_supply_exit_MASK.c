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
struct bq2415x_device {scalar_t__ automode; int /*<<< orphan*/  model; int /*<<< orphan*/  charger; int /*<<< orphan*/  work; scalar_t__ autotimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bq2415x_device *bq)
{
	bq->autotimer = 0;
	if (bq->automode > 0)
		bq->automode = 0;
	FUNC0(&bq->work);
	FUNC2(bq->charger);
	FUNC1(bq->model);
}