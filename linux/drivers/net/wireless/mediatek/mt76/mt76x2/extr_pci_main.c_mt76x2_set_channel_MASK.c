#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pre_tbtt_tasklet; int /*<<< orphan*/  mutex; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  dfs_tasklet; } ;
struct mt76x02_dev {TYPE_2__ mt76; TYPE_1__ dfs_pd; int /*<<< orphan*/  cal_work; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT76_RESET ; 
 int /*<<< orphan*/  MT_CH_BUSY ; 
 int /*<<< orphan*/  MT_CH_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int) ; 
 int FUNC8 (struct mt76x02_dev*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(struct mt76x02_dev *dev, struct cfg80211_chan_def *chandef)
{
	int ret;

	FUNC0(&dev->cal_work);
	FUNC12(&dev->mt76.pre_tbtt_tasklet);
	FUNC12(&dev->dfs_pd.dfs_tasklet);

	FUNC9(&dev->mt76.mutex);
	FUNC11(MT76_RESET, &dev->mt76.state);

	FUNC3(&dev->mt76);

	FUNC7(dev, true);
	ret = FUNC8(dev, chandef);

	/* channel cycle counters read-and-clear */
	FUNC2(dev, MT_CH_IDLE);
	FUNC2(dev, MT_CH_BUSY);

	FUNC5(dev);

	FUNC6(dev);

	FUNC1(MT76_RESET, &dev->mt76.state);
	FUNC10(&dev->mt76.mutex);

	FUNC13(&dev->dfs_pd.dfs_tasklet);
	FUNC13(&dev->mt76.pre_tbtt_tasklet);

	FUNC4(&dev->mt76);

	return ret;
}