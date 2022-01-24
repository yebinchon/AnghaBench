#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dfs_tasklet; } ;
struct mt76x02_dev {int /*<<< orphan*/  mt76; TYPE_1__ dfs_pd; int /*<<< orphan*/  cal_work; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_CH_BUSY ; 
 int /*<<< orphan*/  MT_CH_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct mt76x02_dev *dev, struct cfg80211_chan_def *chandef)
{
	FUNC0(&dev->cal_work);
	FUNC7(dev, false);
	if (FUNC1(dev))
		FUNC9(&dev->dfs_pd.dfs_tasklet);

	FUNC3(&dev->mt76);
	FUNC8(dev, chandef);

	/* channel cycle counters read-and-clear */
	FUNC2(dev, MT_CH_IDLE);
	FUNC2(dev, MT_CH_BUSY);

	FUNC6(dev);

	if (FUNC1(dev)) {
		FUNC5(dev);
		FUNC10(&dev->dfs_pd.dfs_tasklet);
	}
	FUNC7(dev, true);

	FUNC4(&dev->mt76);
}