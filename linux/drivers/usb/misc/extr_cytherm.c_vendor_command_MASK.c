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
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_OTHER ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,unsigned char,int,unsigned char,unsigned char,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_device *dev, unsigned char request, 
			  unsigned char value, unsigned char index,
			  void *buf, int size)
{
	return FUNC0(dev, FUNC1(dev, 0),
			       request, 
			       USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_OTHER,
			       value, 
			       index, buf, size,
			       USB_CTRL_GET_TIMEOUT);
}