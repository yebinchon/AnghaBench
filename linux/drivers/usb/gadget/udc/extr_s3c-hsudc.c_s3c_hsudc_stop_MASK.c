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
struct usb_gadget {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  speed; } ;
struct s3c_hsudc {int /*<<< orphan*/ * driver; int /*<<< orphan*/  supplies; int /*<<< orphan*/  irq; TYPE_3__* transceiver; int /*<<< orphan*/  lock; TYPE_2__* pd; int /*<<< orphan*/  dev; TYPE_1__ gadget; } ;
struct TYPE_6__ {int /*<<< orphan*/  otg; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* gpio_uninit ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct s3c_hsudc*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct s3c_hsudc* FUNC11 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC12(struct usb_gadget *gadget)
{
	struct s3c_hsudc *hsudc = FUNC11(gadget);
	unsigned long flags;

	if (!hsudc)
		return -ENODEV;

	FUNC8(&hsudc->lock, flags);
	hsudc->gadget.speed = USB_SPEED_UNKNOWN;
	FUNC7();

	FUNC4(hsudc->dev);

	if (hsudc->pd->gpio_uninit)
		hsudc->pd->gpio_uninit();
	FUNC6(hsudc);
	FUNC9(&hsudc->lock, flags);

	if (!FUNC1(hsudc->transceiver))
		(void) FUNC3(hsudc->transceiver->otg, NULL);

	FUNC2(hsudc->irq);

	FUNC5(FUNC0(hsudc->supplies), hsudc->supplies);
	hsudc->driver = NULL;

	return 0;
}