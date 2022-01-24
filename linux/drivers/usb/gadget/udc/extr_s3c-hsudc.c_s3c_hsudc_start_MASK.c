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
struct usb_gadget_driver {scalar_t__ max_speed; int /*<<< orphan*/  setup; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_5__ {int name; } ;
struct s3c_hsudc {struct usb_gadget_driver* driver; int /*<<< orphan*/  supplies; TYPE_1__* pd; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; TYPE_2__ gadget; TYPE_3__* transceiver; } ;
struct TYPE_6__ {int /*<<< orphan*/  otg; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* gpio_init ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ USB_SPEED_FULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct s3c_hsudc*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct s3c_hsudc* FUNC11 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC12(struct usb_gadget *gadget,
		struct usb_gadget_driver *driver)
{
	struct s3c_hsudc *hsudc = FUNC11(gadget);
	int ret;

	if (!driver
		|| driver->max_speed < USB_SPEED_FULL
		|| !driver->setup)
		return -EINVAL;

	if (!hsudc)
		return -ENODEV;

	if (hsudc->driver)
		return -EBUSY;

	hsudc->driver = driver;

	ret = FUNC7(FUNC0(hsudc->supplies),
				    hsudc->supplies);
	if (ret != 0) {
		FUNC2(hsudc->dev, "failed to enable supplies: %d\n", ret);
		goto err_supplies;
	}

	/* connect to bus through transceiver */
	if (!FUNC1(hsudc->transceiver)) {
		ret = FUNC4(hsudc->transceiver->otg,
					&hsudc->gadget);
		if (ret) {
			FUNC2(hsudc->dev, "%s: can't bind to transceiver\n",
					hsudc->gadget.name);
			goto err_otg;
		}
	}

	FUNC3(hsudc->irq);
	FUNC9(hsudc);

	FUNC5(hsudc->dev);

	FUNC8();
	if (hsudc->pd->gpio_init)
		hsudc->pd->gpio_init();

	return 0;
err_otg:
	FUNC6(FUNC0(hsudc->supplies), hsudc->supplies);
err_supplies:
	hsudc->driver = NULL;
	return ret;
}