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
struct usb_hcd {int has_tt; } ;
struct gbphy_device_id {int dummy; } ;
struct device {int dummy; } ;
struct gbphy_device {TYPE_1__* cport_desc; int /*<<< orphan*/  bundle; struct device dev; } ;
struct gb_usb_device {struct gbphy_device* gbphy_dev; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 scalar_t__ FUNC0 (struct gb_connection*) ; 
 int FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct gb_connection* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_connection*) ; 
 int FUNC7 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_connection*,struct gb_usb_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct gbphy_device*,struct gb_usb_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct gb_usb_device* FUNC11 (struct usb_hcd*) ; 
 int FUNC12 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC13 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_gb_hc_driver ; 
 int /*<<< orphan*/  FUNC14 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC15(struct gbphy_device *gbphy_dev,
			const struct gbphy_device_id *id)
{
	struct gb_connection *connection;
	struct device *dev = &gbphy_dev->dev;
	struct gb_usb_device *gb_usb_dev;
	struct usb_hcd *hcd;
	int retval;

	hcd = FUNC13(&usb_gb_hc_driver, dev, FUNC2(dev));
	if (!hcd)
		return -ENOMEM;

	connection = FUNC4(gbphy_dev->bundle,
					  FUNC10(gbphy_dev->cport_desc->id),
					  NULL);
	if (FUNC0(connection)) {
		retval = FUNC1(connection);
		goto exit_usb_put;
	}

	gb_usb_dev = FUNC11(hcd);
	gb_usb_dev->connection = connection;
	FUNC8(connection, gb_usb_dev);
	gb_usb_dev->gbphy_dev = gbphy_dev;
	FUNC9(gbphy_dev, gb_usb_dev);

	hcd->has_tt = 1;

	retval = FUNC7(connection);
	if (retval)
		goto exit_connection_destroy;

	/*
	 * FIXME: The USB bridged-PHY protocol driver depends on changes to
	 *        USB core which are not yet upstream.
	 *
	 *        Disable for now.
	 */
	if (1) {
		FUNC3(dev, "USB protocol disabled\n");
		retval = -EPROTONOSUPPORT;
		goto exit_connection_disable;
	}

	retval = FUNC12(hcd, 0, 0);
	if (retval)
		goto exit_connection_disable;

	return 0;

exit_connection_disable:
	FUNC6(connection);
exit_connection_destroy:
	FUNC5(connection);
exit_usb_put:
	FUNC14(hcd);

	return retval;
}