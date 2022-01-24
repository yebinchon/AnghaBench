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
struct knav_pool {int /*<<< orphan*/  name; int /*<<< orphan*/  list; int /*<<< orphan*/  region_inst; scalar_t__ num_desc; TYPE_1__* region; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  used_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct knav_pool*) ; 
 int /*<<< orphan*/  FUNC1 (struct knav_pool*) ; 
 TYPE_2__* kdev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  knav_dev_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void *ph)
{
	struct knav_pool *pool = ph;

	if (!pool)
		return;

	if (!pool->region)
		return;

	FUNC1(pool);
	FUNC4(&knav_dev_lock);

	pool->region->used_desc -= pool->num_desc;
	FUNC3(&pool->region_inst);
	FUNC3(&pool->list);

	FUNC5(&knav_dev_lock);
	FUNC2(pool->name);
	FUNC0(kdev->dev, pool);
}