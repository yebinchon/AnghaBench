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
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct r8192_priv {int /*<<< orphan*/ * pFirmware; struct usb_device* udev; int /*<<< orphan*/  ieee80211; } ;
struct net_device {int watchdog_timeo; int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/ * wireless_handlers; int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct r8192_priv* FUNC5 (struct net_device*) ; 
 char* ifname ; 
 struct usb_device* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  r8192_wx_handlers_def ; 
 int FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  rtl8192_netdev_ops ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_interface*,struct net_device*) ; 

__attribute__((used)) static int FUNC18(struct usb_interface *intf,
			     const struct usb_device_id *id)
{
	struct net_device *dev = NULL;
	struct r8192_priv *priv = NULL;
	struct usb_device *udev = FUNC6(intf);
	int ret;

	FUNC0(COMP_INIT, "Oops: i'm coming\n");

	dev = FUNC2(sizeof(struct r8192_priv));
	if (!dev)
		return -ENOMEM;

	FUNC17(intf, dev);
	FUNC1(dev, &intf->dev);
	priv = FUNC5(dev);
	priv->ieee80211 = FUNC9(dev);
	priv->udev = udev;

	dev->netdev_ops = &rtl8192_netdev_ops;

	dev->wireless_handlers = &r8192_wx_handlers_def;

	dev->type = ARPHRD_ETHER;

	dev->watchdog_timeo = HZ * 3;

	if (FUNC3(dev, ifname) < 0) {
		FUNC0(COMP_INIT,
			 "Oops: devname already taken! Trying wlan%%d...\n");
		ifname = "wlan%d";
		FUNC3(dev, ifname);
	}

	FUNC0(COMP_INIT, "Driver probe completed1\n");
	if (FUNC14(dev) != 0) {
		FUNC0(COMP_ERR, "Initialization failed");
		ret = -ENODEV;
		goto fail;
	}
	FUNC10(dev);
	FUNC11(dev);

	ret = FUNC12(dev);
	if (ret)
		goto fail2;

	FUNC0(COMP_INIT, "dev name=======> %s\n", dev->name);
	FUNC15(dev);


	FUNC0(COMP_INIT, "Driver probe completed\n");
	return 0;

fail2:
	FUNC13(dev);
fail:
	FUNC7(priv->pFirmware);
	priv->pFirmware = NULL;
	FUNC16(dev);
	FUNC8(10);
	FUNC4(dev);

	FUNC0(COMP_ERR, "wlan driver load failed\n");
	return ret;
}