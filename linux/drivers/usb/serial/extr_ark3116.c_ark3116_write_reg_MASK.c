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
struct usb_serial {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  ARK_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_serial *serial,
			     unsigned reg, __u8 val)
{
	int result;
	 /* 0xfe 0x40 are magic values taken from original driver */
	result = FUNC0(serial->dev,
				 FUNC1(serial->dev, 0),
				 0xfe, 0x40, val, reg,
				 NULL, 0, ARK_TIMEOUT);
	if (result)
		return result;

	return 0;
}