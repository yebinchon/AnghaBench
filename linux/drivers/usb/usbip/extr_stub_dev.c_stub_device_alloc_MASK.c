#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int devnum; int /*<<< orphan*/  dev; TYPE_1__* bus; } ;
struct TYPE_5__ {int /*<<< orphan*/  unusable; int /*<<< orphan*/  reset; int /*<<< orphan*/  shutdown; } ;
struct TYPE_6__ {int sockfd; TYPE_2__ eh_ops; int /*<<< orphan*/ * tcp_socket; int /*<<< orphan*/  lock; int /*<<< orphan*/  status; int /*<<< orphan*/  side; } ;
struct stub_device {int devid; TYPE_3__ ud; int /*<<< orphan*/  tx_waitq; int /*<<< orphan*/  priv_lock; int /*<<< orphan*/  unlink_tx; int /*<<< orphan*/  unlink_free; int /*<<< orphan*/  priv_free; int /*<<< orphan*/  priv_tx; int /*<<< orphan*/  priv_init; int /*<<< orphan*/  udev; } ;
struct TYPE_4__ {int busnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDEV_ST_AVAILABLE ; 
 int /*<<< orphan*/  USBIP_STUB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct stub_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stub_device_reset ; 
 int /*<<< orphan*/  stub_device_unusable ; 
 int /*<<< orphan*/  stub_shutdown_connection ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static struct stub_device *FUNC7(struct usb_device *udev)
{
	struct stub_device *sdev;
	int busnum = udev->bus->busnum;
	int devnum = udev->devnum;

	FUNC1(&udev->dev, "allocating stub device");

	/* yes, it's a new device */
	sdev = FUNC3(sizeof(struct stub_device), GFP_KERNEL);
	if (!sdev)
		return NULL;

	sdev->udev = FUNC5(udev);

	/*
	 * devid is defined with devnum when this driver is first allocated.
	 * devnum may change later if a device is reset. However, devid never
	 * changes during a usbip connection.
	 */
	sdev->devid		= (busnum << 16) | devnum;
	sdev->ud.side		= USBIP_STUB;
	sdev->ud.status		= SDEV_ST_AVAILABLE;
	FUNC4(&sdev->ud.lock);
	sdev->ud.tcp_socket	= NULL;
	sdev->ud.sockfd		= -1;

	FUNC0(&sdev->priv_init);
	FUNC0(&sdev->priv_tx);
	FUNC0(&sdev->priv_free);
	FUNC0(&sdev->unlink_free);
	FUNC0(&sdev->unlink_tx);
	FUNC4(&sdev->priv_lock);

	FUNC2(&sdev->tx_waitq);

	sdev->ud.eh_ops.shutdown = stub_shutdown_connection;
	sdev->ud.eh_ops.reset    = stub_device_reset;
	sdev->ud.eh_ops.unusable = stub_device_unusable;

	FUNC6(&sdev->ud);

	FUNC1(&udev->dev, "register new device\n");

	return sdev;
}