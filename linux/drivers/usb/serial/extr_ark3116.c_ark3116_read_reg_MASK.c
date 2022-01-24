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
struct usb_serial {TYPE_1__* interface; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARK_TIMEOUT ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,unsigned int,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_serial *serial,
			    unsigned reg, unsigned char *buf)
{
	int result;
	/* 0xfe 0xc0 are magic values taken from original driver */
	result = FUNC1(serial->dev,
				 FUNC2(serial->dev, 0),
				 0xfe, 0xc0, 0, reg,
				 buf, 1, ARK_TIMEOUT);
	if (result < 1) {
		FUNC0(&serial->interface->dev,
				"failed to read register %u: %d\n",
				reg, result);
		if (result >= 0)
			result = -EIO;

		return result;
	}

	return 0;
}