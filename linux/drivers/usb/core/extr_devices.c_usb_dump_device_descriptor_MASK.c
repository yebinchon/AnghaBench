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
typedef  int u16 ;
struct usb_device_descriptor {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; int /*<<< orphan*/  bNumConfigurations; int /*<<< orphan*/  bMaxPacketSize0; int /*<<< orphan*/  bDeviceProtocol; int /*<<< orphan*/  bDeviceSubClass; int /*<<< orphan*/  bDeviceClass; int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  bcdUSB; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* format_device1 ; 
 char* format_device2 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,int,int,...) ; 

__attribute__((used)) static char *FUNC3(char *start, char *end,
				const struct usb_device_descriptor *desc)
{
	u16 bcdUSB = FUNC1(desc->bcdUSB);
	u16 bcdDevice = FUNC1(desc->bcdDevice);

	if (start > end)
		return start;
	start += FUNC2(start, format_device1,
			  bcdUSB >> 8, bcdUSB & 0xff,
			  desc->bDeviceClass,
			  FUNC0(desc->bDeviceClass),
			  desc->bDeviceSubClass,
			  desc->bDeviceProtocol,
			  desc->bMaxPacketSize0,
			  desc->bNumConfigurations);
	if (start > end)
		return start;
	start += FUNC2(start, format_device2,
			 FUNC1(desc->idVendor),
			 FUNC1(desc->idProduct),
			 bcdDevice >> 8, bcdDevice & 0xff);
	return start;
}