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
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
struct rsi_hw {scalar_t__ rsi_dev; } ;
struct rsi_91x_usbdev {struct usb_device* usbdev; } ;

/* Variables and functions */
 int FUNC0 (struct usb_device*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct rsi_hw *adapter,
				    unsigned long reg,
				    unsigned long value, u16 len)
{
	struct usb_device *usbdev =
		((struct rsi_91x_usbdev *)adapter->rsi_dev)->usbdev;

	return FUNC0(usbdev, reg, value, len);
}