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
struct cdns3_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  usb_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CONF_L1DS ; 
 int /*<<< orphan*/  USB_CONF_L1EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(struct cdns3_device *priv_dev, int enable)
{
	if (enable)
		FUNC0(USB_CONF_L1EN, &priv_dev->regs->usb_conf);
	else
		FUNC0(USB_CONF_L1DS, &priv_dev->regs->usb_conf);
}