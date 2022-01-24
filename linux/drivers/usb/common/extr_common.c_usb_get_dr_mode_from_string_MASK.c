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
typedef  enum usb_dr_mode { ____Placeholder_usb_dr_mode } usb_dr_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int USB_DR_MODE_UNKNOWN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  usb_dr_modes ; 

__attribute__((used)) static enum usb_dr_mode FUNC2(const char *str)
{
	int ret;

	ret = FUNC1(usb_dr_modes, FUNC0(usb_dr_modes), str);
	return (ret < 0) ? USB_DR_MODE_UNKNOWN : ret;
}