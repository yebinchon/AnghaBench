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
struct usb_function {int dummy; } ;
struct printer_dev {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 struct printer_dev* FUNC0 (struct usb_function*) ; 
 int FUNC1 (struct printer_dev*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct usb_function *f,
		unsigned intf, unsigned alt)
{
	struct printer_dev *dev = FUNC0(f);
	int ret = -ENOTSUPP;

	if (!alt)
		ret = FUNC1(dev, intf);

	return ret;
}