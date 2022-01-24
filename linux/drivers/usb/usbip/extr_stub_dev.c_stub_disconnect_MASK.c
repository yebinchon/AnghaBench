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
struct usb_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  portnum; int /*<<< orphan*/  parent; } ;
struct usb_dev_state {int dummy; } ;
struct stub_device {int /*<<< orphan*/  udev; } ;
struct bus_id_priv {int shutdown_busid; scalar_t__ status; int /*<<< orphan*/  busid_lock; int /*<<< orphan*/ * sdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ STUB_BUSID_ADDED ; 
 scalar_t__ STUB_BUSID_ALLOC ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct stub_device* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct bus_id_priv* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct bus_id_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct bus_id_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct stub_device*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_dev_state*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct usb_device *udev)
{
	struct stub_device *sdev;
	const char *udev_busid = FUNC4(&udev->dev);
	struct bus_id_priv *busid_priv;
	int rc;

	FUNC1(&udev->dev, "Enter disconnect\n");

	busid_priv = FUNC6(udev_busid);
	if (!busid_priv) {
		FUNC0();
		return;
	}

	sdev = FUNC3(&udev->dev);

	/* get stub_device */
	if (!sdev) {
		FUNC2(&udev->dev, "could not get device");
		/* release busid_lock */
		FUNC7(busid_priv);
		return;
	}

	FUNC5(&udev->dev, NULL);

	/* release busid_lock before call to remove device files */
	FUNC7(busid_priv);

	/*
	 * NOTE: rx/tx threads are invoked for each usb_device.
	 */

	/* release port */
	rc = FUNC12(udev->parent, udev->portnum,
				  (struct usb_dev_state *) udev);
	if (rc) {
		FUNC1(&udev->dev, "unable to release port\n");
		return;
	}

	/* If usb reset is called from event handler */
	if (FUNC14(current))
		return;

	/* we already have busid_priv, just lock busid_lock */
	FUNC9(&busid_priv->busid_lock);
	if (!busid_priv->shutdown_busid)
		busid_priv->shutdown_busid = 1;
	/* release busid_lock */
	FUNC10(&busid_priv->busid_lock);

	/* shutdown the current connection */
	FUNC8(busid_priv);

	FUNC13(sdev->udev);

	/* we already have busid_priv, just lock busid_lock */
	FUNC9(&busid_priv->busid_lock);
	/* free sdev */
	busid_priv->sdev = NULL;
	FUNC11(sdev);

	if (busid_priv->status == STUB_BUSID_ALLOC)
		busid_priv->status = STUB_BUSID_ADDED;
	/* release busid_lock */
	FUNC10(&busid_priv->busid_lock);
	return;
}