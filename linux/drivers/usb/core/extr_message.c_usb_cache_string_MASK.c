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
 int /*<<< orphan*/  GFP_NOIO ; 
 int MAX_USB_STRING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (struct usb_device*,int,char*,int) ; 

char *FUNC4(struct usb_device *udev, int index)
{
	char *buf;
	char *smallbuf = NULL;
	int len;

	if (index <= 0)
		return NULL;

	buf = FUNC1(MAX_USB_STRING_SIZE, GFP_NOIO);
	if (buf) {
		len = FUNC3(udev, index, buf, MAX_USB_STRING_SIZE);
		if (len > 0) {
			smallbuf = FUNC1(++len, GFP_NOIO);
			if (!smallbuf)
				return buf;
			FUNC2(smallbuf, buf, len);
		}
		FUNC0(buf);
	}
	return smallbuf;
}