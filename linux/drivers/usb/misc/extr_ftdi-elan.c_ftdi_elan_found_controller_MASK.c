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
struct usb_ftdi {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct usb_ftdi*,int) ; 
 int FUNC1 (struct usb_ftdi*,int) ; 
 int FUNC2 (struct usb_ftdi*,int) ; 

__attribute__((used)) static int FUNC3(struct usb_ftdi *ftdi, int fn, int quirk)
{
	int result;
	int UxxxStatus;
	UxxxStatus = FUNC2(ftdi, fn);
	if (UxxxStatus)
		return UxxxStatus;
	result = FUNC0(ftdi, quirk);
	UxxxStatus = FUNC1(ftdi, fn);
	if (UxxxStatus)
		return UxxxStatus;
	return result;
}