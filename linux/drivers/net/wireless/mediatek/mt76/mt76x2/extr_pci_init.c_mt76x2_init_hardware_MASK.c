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
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  rxfilter; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT76_STATE_INITIALIZED ; 
 int /*<<< orphan*/  MT_RX_FILTR_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*) ; 
 int FUNC2 (struct mt76x02_dev*) ; 
 int FUNC3 (struct mt76x02_dev*) ; 
 int FUNC4 (struct mt76x02_dev*,int) ; 
 int FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int) ; 
 int FUNC7 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct mt76x02_dev *dev)
{
	int ret;

	FUNC1(dev);
	FUNC9(dev, true);
	FUNC8(dev);

	ret = FUNC3(dev);
	if (ret)
		return ret;

	ret = FUNC4(dev, true);
	if (ret)
		return ret;

	dev->mt76.rxfilter = FUNC0(dev, MT_RX_FILTR_CFG);

	ret = FUNC2(dev);
	if (ret)
		return ret;

	FUNC10(MT76_STATE_INITIALIZED, &dev->mt76.state);
	ret = FUNC5(dev);
	if (ret)
		return ret;

	ret = FUNC7(dev);
	if (ret)
		return ret;

	FUNC6(dev, false);

	return 0;
}