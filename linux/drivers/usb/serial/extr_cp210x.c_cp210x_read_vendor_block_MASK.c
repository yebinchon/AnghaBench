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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct usb_serial {TYPE_1__* interface; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP210X_VENDOR_SPECIFIC ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_serial *serial, u8 type, u16 val,
				    void *buf, int bufsize)
{
	void *dmabuf;
	int result;

	dmabuf = FUNC3(bufsize, GFP_KERNEL);
	if (!dmabuf)
		return -ENOMEM;

	result = FUNC5(serial->dev, FUNC6(serial->dev, 0),
				 CP210X_VENDOR_SPECIFIC, type, val,
				 FUNC0(serial), dmabuf, bufsize,
				 USB_CTRL_GET_TIMEOUT);
	if (result == bufsize) {
		FUNC4(buf, dmabuf, bufsize);
		result = 0;
	} else {
		FUNC1(&serial->interface->dev,
			"failed to get vendor val 0x%04x size %d: %d\n", val,
			bufsize, result);
		if (result >= 0)
			result = -EIO;
	}

	FUNC2(dmabuf);

	return result;
}