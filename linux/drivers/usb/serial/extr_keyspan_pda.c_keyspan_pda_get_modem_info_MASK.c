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
typedef  unsigned char u8 ;
struct usb_serial {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_serial *serial,
				      unsigned char *value)
{
	int rc;
	u8 *data;

	data = FUNC1(1, GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	rc = FUNC2(serial->dev, FUNC3(serial->dev, 0),
			     3, /* get pins */
			     USB_TYPE_VENDOR|USB_RECIP_INTERFACE|USB_DIR_IN,
			     0, 0, data, 1, 2000);
	if (rc == 1)
		*value = *data;
	else if (rc >= 0)
		rc = -EIO;

	FUNC0(data);
	return rc;
}