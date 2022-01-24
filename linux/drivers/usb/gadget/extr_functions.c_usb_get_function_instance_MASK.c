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
struct usb_function_instance {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct usb_function_instance* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_function_instance*) ; 
 int FUNC2 (struct usb_function_instance*) ; 
 int FUNC3 (char*,char const*) ; 
 struct usb_function_instance* FUNC4 (char const*) ; 

struct usb_function_instance *FUNC5(const char *name)
{
	struct usb_function_instance *fi;
	int ret;

	fi = FUNC4(name);
	if (!FUNC1(fi))
		return fi;
	ret = FUNC2(fi);
	if (ret != -ENOENT)
		return fi;
	ret = FUNC3("usbfunc:%s", name);
	if (ret < 0)
		return FUNC0(ret);
	return FUNC4(name);
}