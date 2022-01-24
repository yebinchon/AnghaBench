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
struct usb_ftdi {int gone_away; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_ftdi*) ; 
 struct usb_ftdi* FUNC1 (struct platform_device*) ; 

void FUNC2(struct platform_device *pdev)
{
	struct usb_ftdi *ftdi = FUNC1(pdev);
	ftdi->gone_away += 1;
	FUNC0(ftdi);
}