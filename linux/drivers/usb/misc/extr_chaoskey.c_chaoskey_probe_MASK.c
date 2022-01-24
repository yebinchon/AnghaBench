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
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_1__ descriptor; scalar_t__ serial; scalar_t__ product; } ;
struct TYPE_5__ {int quality; int /*<<< orphan*/  read; int /*<<< orphan*/ * name; } ;
struct chaoskey {int in_ep; int reads_started; int size; int present; int hwrng_registered; TYPE_2__ hwrng; int /*<<< orphan*/ * name; int /*<<< orphan*/  rng_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_q; int /*<<< orphan*/ * buf; int /*<<< orphan*/  urb; int /*<<< orphan*/  interface; } ;
struct TYPE_6__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 scalar_t__ ALEA_VENDOR_ID ; 
 int CHAOSKEY_BUF_LEN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  chaos_read_callback ; 
 int /*<<< orphan*/  chaoskey_class ; 
 TYPE_3__ chaoskey_driver ; 
 int /*<<< orphan*/  FUNC0 (struct chaoskey*) ; 
 int /*<<< orphan*/  chaoskey_rng_read ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct chaoskey* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*) ; 
 int FUNC12 (struct usb_endpoint_descriptor*) ; 
 int FUNC13 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_interface*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct chaoskey*) ; 
 int FUNC16 (struct usb_host_interface*,struct usb_endpoint_descriptor**) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_device*,int) ; 
 int FUNC19 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_interface*,struct chaoskey*) ; 

__attribute__((used)) static int FUNC21(struct usb_interface *interface,
			  const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC3(interface);
	struct usb_host_interface *altsetting = interface->cur_altsetting;
	struct usb_endpoint_descriptor *epd;
	int in_ep;
	struct chaoskey *dev;
	int result = -ENOMEM;
	int size;
	int res;

	FUNC10(interface, "probe %s-%s", udev->product, udev->serial);

	/* Find the first bulk IN endpoint and its packet size */
	res = FUNC16(altsetting, &epd);
	if (res) {
		FUNC10(interface, "no IN endpoint found");
		return res;
	}

	in_ep = FUNC13(epd);
	size = FUNC12(epd);

	/* Validate endpoint and size */
	if (size <= 0) {
		FUNC10(interface, "invalid size (%d)", size);
		return -ENODEV;
	}

	if (size > CHAOSKEY_BUF_LEN) {
		FUNC10(interface, "size reduced from %d to %d\n",
			size, CHAOSKEY_BUF_LEN);
		size = CHAOSKEY_BUF_LEN;
	}

	/* Looks good, allocate and initialize */

	dev = FUNC6(sizeof(struct chaoskey), GFP_KERNEL);

	if (dev == NULL)
		goto out;

	dev->interface = FUNC17(interface);

	dev->buf = FUNC5(size, GFP_KERNEL);

	if (dev->buf == NULL)
		goto out;

	dev->urb = FUNC9(0, GFP_KERNEL);

	if (!dev->urb)
		goto out;

	FUNC15(dev->urb,
		udev,
		FUNC18(udev, in_ep),
		dev->buf,
		size,
		chaos_read_callback,
		dev);

	/* Construct a name using the product and serial values. Each
	 * device needs a unique name for the hwrng code
	 */

	if (udev->product && udev->serial) {
		dev->name = FUNC4(GFP_KERNEL, "%s-%s", udev->product,
				      udev->serial);
		if (dev->name == NULL)
			goto out;
	}

	dev->in_ep = in_ep;

	if (FUNC7(udev->descriptor.idVendor) != ALEA_VENDOR_ID)
		dev->reads_started = true;

	dev->size = size;
	dev->present = true;

	FUNC2(&dev->wait_q);

	FUNC8(&dev->lock);
	FUNC8(&dev->rng_lock);

	FUNC20(interface, dev);

	result = FUNC19(interface, &chaoskey_class);
	if (result) {
		FUNC14(interface, "Unable to allocate minor number.");
		goto out;
	}

	dev->hwrng.name = dev->name ? dev->name : chaoskey_driver.name;
	dev->hwrng.read = chaoskey_rng_read;
	dev->hwrng.quality = 1024;

	dev->hwrng_registered = (FUNC1(&dev->hwrng) == 0);
	if (!dev->hwrng_registered)
		FUNC14(interface, "Unable to register with hwrng");

	FUNC11(udev);

	FUNC10(interface, "chaoskey probe success, size %d", dev->size);
	return 0;

out:
	FUNC20(interface, NULL);
	FUNC0(dev);
	return result;
}