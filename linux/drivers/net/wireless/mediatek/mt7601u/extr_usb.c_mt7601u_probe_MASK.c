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
typedef  int u32 ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct mt7601u_dev {int /*<<< orphan*/  hw; int /*<<< orphan*/  stat_wq; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; int /*<<< orphan*/  vend_buf; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MT7601U_STATE_INITIALIZED ; 
 int /*<<< orphan*/  MT_ASIC_VERSION ; 
 int /*<<< orphan*/  MT_EFUSE_CTRL ; 
 int MT_EFUSE_CTRL_SEL ; 
 int /*<<< orphan*/  MT_MAC_CSR0 ; 
 int /*<<< orphan*/  MT_VEND_BUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 struct mt7601u_dev* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct usb_interface*,struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7601u_dev*) ; 
 int FUNC9 (struct mt7601u_dev*) ; 
 int FUNC10 (struct mt7601u_dev*) ; 
 int FUNC11 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC14 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_interface*,struct mt7601u_dev*) ; 

__attribute__((used)) static int FUNC18(struct usb_interface *usb_intf,
			 const struct usb_device_id *id)
{
	struct usb_device *usb_dev = FUNC5(usb_intf);
	struct mt7601u_dev *dev;
	u32 asic_rev, mac_rev;
	int ret;

	dev = FUNC6(&usb_intf->dev);
	if (!dev)
		return -ENOMEM;

	usb_dev = FUNC14(usb_dev);
	FUNC16(usb_dev);

	FUNC17(usb_intf, dev);

	dev->vend_buf = FUNC3(dev->dev, MT_VEND_BUF, GFP_KERNEL);
	if (!dev->vend_buf) {
		ret = -ENOMEM;
		goto err;
	}

	ret = FUNC7(usb_intf, dev);
	if (ret)
		goto err;
	ret = FUNC12(dev);
	if (ret)
		goto err;

	asic_rev = FUNC11(dev, MT_ASIC_VERSION);
	mac_rev = FUNC11(dev, MT_MAC_CSR0);
	FUNC1(dev->dev, "ASIC revision: %08x MAC revision: %08x\n",
		 asic_rev, mac_rev);
	if ((asic_rev >> 16) != 0x7601) {
		ret = -ENODEV;
		goto err;
	}

	/* Note: vendor driver skips this check for MT7601U */
	if (!(FUNC11(dev, MT_EFUSE_CTRL) & MT_EFUSE_CTRL_SEL))
		FUNC2(dev->dev, "Warning: eFUSE not present\n");

	ret = FUNC9(dev);
	if (ret)
		goto err;
	ret = FUNC10(dev);
	if (ret)
		goto err_hw;

	FUNC13(MT7601U_STATE_INITIALIZED, &dev->state);

	return 0;
err_hw:
	FUNC8(dev);
err:
	FUNC17(usb_intf, NULL);
	FUNC15(FUNC5(usb_intf));

	FUNC0(dev->stat_wq);
	FUNC4(dev->hw);
	return ret;
}