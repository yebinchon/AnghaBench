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
struct usb_interface {int dummy; } ;
struct usb_cytherm {TYPE_1__* udev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  READ_RAM ; 
 int /*<<< orphan*/  SIGN ; 
 int /*<<< orphan*/  TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char,int,int) ; 
 struct usb_interface* FUNC4 (struct device*) ; 
 struct usb_cytherm* FUNC5 (struct usb_interface*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr, char *buf)
{

	struct usb_interface *intf = FUNC4(dev);
	struct usb_cytherm *cytherm = FUNC5(intf);

	int retval;
	unsigned char *buffer;

	int temp, sign;
   
	buffer = FUNC2(8, GFP_KERNEL);
	if (!buffer)
		return 0;

	/* read temperature */
	retval = FUNC6(cytherm->udev, READ_RAM, TEMP, 0, buffer, 8);
	if (retval)
		FUNC0(&cytherm->udev->dev, "retval = %d\n", retval);
	temp = buffer[1];
   
	/* read sign */
	retval = FUNC6(cytherm->udev, READ_RAM, SIGN, 0, buffer, 8);
	if (retval)
		FUNC0(&cytherm->udev->dev, "retval = %d\n", retval);
	sign = buffer[1];

	FUNC1(buffer);
   
	return FUNC3(buf, "%c%i.%i", sign ? '-' : '+', temp >> 1,
		       5*(temp - ((temp >> 1) << 1)));
}