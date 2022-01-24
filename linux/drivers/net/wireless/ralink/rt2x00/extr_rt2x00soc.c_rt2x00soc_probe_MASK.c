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
struct rt2x00_ops {int /*<<< orphan*/  hw; } ;
struct rt2x00_dev {int /*<<< orphan*/ * clk; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; struct ieee80211_hw* hw; struct rt2x00_ops const* ops; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct platform_device {TYPE_2__ dev; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RT2X00_CHIP_INTF_SOC ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct ieee80211_hw* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct rt2x00_dev*) ; 
 int FUNC9 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2x00_dev*) ; 

int FUNC11(struct platform_device *pdev, const struct rt2x00_ops *ops)
{
	struct ieee80211_hw *hw;
	struct rt2x00_dev *rt2x00dev;
	int retval;

	hw = FUNC2(sizeof(struct rt2x00_dev), ops->hw);
	if (!hw) {
		FUNC6("Failed to allocate hardware\n");
		return -ENOMEM;
	}

	FUNC5(pdev, hw);

	rt2x00dev = hw->priv;
	rt2x00dev->dev = &pdev->dev;
	rt2x00dev->ops = ops;
	rt2x00dev->hw = hw;
	rt2x00dev->irq = FUNC4(pdev, 0);
	rt2x00dev->name = pdev->dev.driver->name;

	rt2x00dev->clk = FUNC1(&pdev->dev, NULL);
	if (FUNC0(rt2x00dev->clk))
		rt2x00dev->clk = NULL;

	FUNC7(rt2x00dev, RT2X00_CHIP_INTF_SOC);

	retval = FUNC9(rt2x00dev);
	if (retval)
		goto exit_free_device;

	retval = FUNC8(rt2x00dev);
	if (retval)
		goto exit_free_reg;

	return 0;

exit_free_reg:
	FUNC10(rt2x00dev);

exit_free_device:
	FUNC3(hw);

	return retval;
}