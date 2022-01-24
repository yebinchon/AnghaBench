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
struct usb_gadget {int dummy; } ;
struct cdns3_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  usb_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CONF_DEVDS ; 
 int /*<<< orphan*/  USB_CONF_DEVEN ; 
 struct cdns3_device* FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct usb_gadget *gadget, int is_on)
{
	struct cdns3_device *priv_dev = FUNC0(gadget);

	if (is_on)
		FUNC1(USB_CONF_DEVEN, &priv_dev->regs->usb_conf);
	else
		FUNC1(USB_CONF_DEVDS, &priv_dev->regs->usb_conf);

	return 0;
}