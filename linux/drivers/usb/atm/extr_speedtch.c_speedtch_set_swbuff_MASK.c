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
struct usbatm_data {struct usb_device* usb_dev; } ;
struct usb_device {int dummy; } ;
struct speedtch_instance_data {struct usbatm_data* usbatm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_TIMEOUT ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbatm_data*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usbatm_data*,char*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct speedtch_instance_data *instance, int state)
{
	struct usbatm_data *usbatm = instance->usbatm;
	struct usb_device *usb_dev = usbatm->usb_dev;
	int ret;

	ret = FUNC0(usb_dev, FUNC2(usb_dev, 0),
			      0x32, 0x40, state ? 0x01 : 0x00, 0x00, NULL, 0, CTRL_TIMEOUT);
	if (ret < 0)
		FUNC3(usbatm,
			 "%sabling SW buffering: usb_control_msg returned %d\n",
			 state ? "En" : "Dis", ret);
	else
		FUNC1(usbatm, "speedtch_set_swbuff: %sbled SW buffering\n", state ? "En" : "Dis");
}