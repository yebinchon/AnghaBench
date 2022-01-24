#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rxfilter; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MT_RX_FILTR_CFG ; 
 int /*<<< orphan*/  Q_SELECT ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (struct mt76x02_dev*) ; 
 int FUNC8 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct mt76x02_dev*) ; 

int FUNC13(struct mt76x02_dev *dev)
{
	int ret, i, k;

	if (!FUNC6(&dev->mt76, 1000))
		return -EIO;

	/* Wait for ASIC ready after FW load. */
	if (!FUNC4(&dev->mt76))
		return -ETIMEDOUT;

	FUNC12(dev);
	ret = FUNC3(dev, Q_SELECT, 1);
	if (ret)
		return ret;

	FUNC9(dev);

	if (!FUNC5(&dev->mt76))
		return -EIO;

	ret = FUNC8(dev);
	if (ret)
		return ret;

	dev->mt76.rxfilter = FUNC0(dev, MT_RX_FILTR_CFG);

	for (i = 0; i < 16; i++)
		for (k = 0; k < 4; k++)
			FUNC1(dev, i, k, NULL);

	for (i = 0; i < 256; i++)
		FUNC2(dev, i, 0, NULL);

	FUNC11(dev);

	ret = FUNC7(dev);
	if (ret)
		return ret;

	FUNC10(dev);

	return 0;
}