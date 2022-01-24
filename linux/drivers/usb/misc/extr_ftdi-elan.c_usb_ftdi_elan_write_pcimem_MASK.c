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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct usb_ftdi {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct usb_ftdi*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_ftdi* FUNC1 (struct platform_device*) ; 

int FUNC2(struct platform_device *pdev, int mem_offset,
			       u8 width, u32 data)
{
	struct usb_ftdi *ftdi = FUNC1(pdev);
	return FUNC0(ftdi, mem_offset, width, data);
}