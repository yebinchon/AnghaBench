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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct usb_anchor {int dummy; } ;
struct rt2x00_ops {int /*<<< orphan*/  hw; } ;
struct rt2x00_dev {int /*<<< orphan*/  anchor; int /*<<< orphan*/  txstatus_timer; int /*<<< orphan*/  txdone_work; int /*<<< orphan*/  rxdone_work; struct ieee80211_hw* hw; struct rt2x00_ops const* ops; int /*<<< orphan*/ * dev; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2X00_CHIP_INTF_USB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct rt2x00_dev*) ; 
 int FUNC10 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  rt2x00usb_work_rxdone ; 
 int /*<<< orphan*/  rt2x00usb_work_txdone ; 
 struct usb_device* FUNC12 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*,struct ieee80211_hw*) ; 

int FUNC17(struct usb_interface *usb_intf,
		    const struct rt2x00_ops *ops)
{
	struct usb_device *usb_dev = FUNC6(usb_intf);
	struct ieee80211_hw *hw;
	struct rt2x00_dev *rt2x00dev;
	int retval;

	usb_dev = FUNC12(usb_dev);
	FUNC15(usb_dev);

	hw = FUNC3(sizeof(struct rt2x00_dev), ops->hw);
	if (!hw) {
		FUNC7("Failed to allocate hardware\n");
		retval = -ENOMEM;
		goto exit_put_device;
	}

	FUNC16(usb_intf, hw);

	rt2x00dev = hw->priv;
	rt2x00dev->dev = &usb_intf->dev;
	rt2x00dev->ops = ops;
	rt2x00dev->hw = hw;

	FUNC8(rt2x00dev, RT2X00_CHIP_INTF_USB);

	FUNC0(&rt2x00dev->rxdone_work, rt2x00usb_work_rxdone);
	FUNC0(&rt2x00dev->txdone_work, rt2x00usb_work_txdone);
	FUNC2(&rt2x00dev->txstatus_timer, CLOCK_MONOTONIC,
		     HRTIMER_MODE_REL);

	retval = FUNC10(rt2x00dev);
	if (retval)
		goto exit_free_device;

	rt2x00dev->anchor = FUNC1(&usb_dev->dev,
					sizeof(struct usb_anchor),
					GFP_KERNEL);
	if (!rt2x00dev->anchor) {
		retval = -ENOMEM;
		goto exit_free_reg;
	}
	FUNC5(rt2x00dev->anchor);

	retval = FUNC9(rt2x00dev);
	if (retval)
		goto exit_free_anchor;

	return 0;

exit_free_anchor:
	FUNC13(rt2x00dev->anchor);

exit_free_reg:
	FUNC11(rt2x00dev);

exit_free_device:
	FUNC4(hw);

exit_put_device:
	FUNC14(usb_dev);

	FUNC16(usb_intf, NULL);

	return retval;
}