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
struct wahc {int /*<<< orphan*/  usb_dev; TYPE_1__* usb_iface; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_RPIPE ; 
 int /*<<< orphan*/  USB_REQ_RPIPE_RESET ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wahc *wa, unsigned index)
{
	int result;
	struct device *dev = &wa->usb_iface->dev;

	result = FUNC1(
		wa->usb_dev, FUNC2(wa->usb_dev, 0),
		USB_REQ_RPIPE_RESET,
		USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_RPIPE,
		0, index, NULL, 0, USB_CTRL_SET_TIMEOUT);
	if (result < 0)
		FUNC0(dev, "rpipe %u: reset failed: %d\n",
			index, result);
	return result;
}