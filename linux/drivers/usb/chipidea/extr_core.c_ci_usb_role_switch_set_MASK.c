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
struct device {int dummy; } ;
struct ci_hdrc_cable {int changed; int connected; } ;
struct ci_hdrc {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  irq; TYPE_1__* platdata; scalar_t__ wq; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;
struct TYPE_2__ {struct ci_hdrc_cable id_extcon; struct ci_hdrc_cable vbus_extcon; } ;

/* Variables and functions */
 int USB_ROLE_DEVICE ; 
 int USB_ROLE_HOST ; 
 int USB_ROLE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ci_hdrc*) ; 
 int FUNC1 (struct ci_hdrc*) ; 
 struct ci_hdrc* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct device *dev, enum usb_role role)
{
	struct ci_hdrc *ci = FUNC2(dev);
	struct ci_hdrc_cable *cable = NULL;
	enum usb_role current_role = FUNC1(ci);
	unsigned long flags;

	if (current_role == role)
		return 0;

	FUNC4(ci->dev);
	/* Stop current role */
	FUNC6(&ci->lock, flags);
	if (current_role == USB_ROLE_DEVICE)
		cable = &ci->platdata->vbus_extcon;
	else if (current_role == USB_ROLE_HOST)
		cable = &ci->platdata->id_extcon;

	if (cable) {
		cable->changed = true;
		cable->connected = false;
		FUNC0(ci->irq, ci);
		FUNC7(&ci->lock, flags);
		if (ci->wq && role != USB_ROLE_NONE)
			FUNC3(ci->wq);
		FUNC6(&ci->lock, flags);
	}

	cable = NULL;

	/* Start target role */
	if (role == USB_ROLE_DEVICE)
		cable = &ci->platdata->vbus_extcon;
	else if (role == USB_ROLE_HOST)
		cable = &ci->platdata->id_extcon;

	if (cable) {
		cable->changed = true;
		cable->connected = true;
		FUNC0(ci->irq, ci);
	}
	FUNC7(&ci->lock, flags);
	FUNC5(ci->dev);

	return 0;
}