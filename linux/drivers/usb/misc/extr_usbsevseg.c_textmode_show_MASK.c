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
struct usb_sevsegdev {int textmode; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 char** display_textmodes ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct usb_interface* FUNC3 (struct device*) ; 
 struct usb_sevsegdev* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
	struct device_attribute *attr, char *buf)
{
	struct usb_interface *intf = FUNC3(dev);
	struct usb_sevsegdev *mydev = FUNC4(intf);
	int i;

	buf[0] = 0;

	for (i = 0; i < FUNC0(display_textmodes); i++) {
		if (mydev->textmode == i) {
			FUNC1(buf, " [");
			FUNC1(buf, display_textmodes[i]);
			FUNC1(buf, "] ");
		} else {
			FUNC1(buf, " ");
			FUNC1(buf, display_textmodes[i]);
			FUNC1(buf, " ");
		}
	}
	FUNC1(buf, "\n");


	return FUNC2(buf);
}