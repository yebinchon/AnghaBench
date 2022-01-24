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
struct device {int dummy; } ;
typedef  enum usb_dr_mode { ____Placeholder_usb_dr_mode } usb_dr_mode ;

/* Variables and functions */
 int USB_DR_MODE_UNKNOWN ; 
 int FUNC0 (struct device*,char*,char const**) ; 
 int FUNC1 (char const*) ; 

enum usb_dr_mode FUNC2(struct device *dev)
{
	const char *dr_mode;
	int err;

	err = FUNC0(dev, "dr_mode", &dr_mode);
	if (err < 0)
		return USB_DR_MODE_UNKNOWN;

	return FUNC1(dr_mode);
}