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
struct TYPE_4__ {int /*<<< orphan*/  pre_tbtt_tasklet; } ;
struct TYPE_3__ {int /*<<< orphan*/  dfs_tasklet; } ;
struct mt76x02_dev {TYPE_2__ mt76; TYPE_1__ dfs_pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mt76x02_dev *dev)
{
	FUNC3(&dev->dfs_pd.dfs_tasklet);
	FUNC3(&dev->mt76.pre_tbtt_tasklet);
	FUNC2(dev);
	FUNC0(dev);
	FUNC1(dev);
}