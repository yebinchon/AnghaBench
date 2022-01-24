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
typedef  scalar_t__ u8 ;
struct twl4030_usb {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct twl4030_usb *twl,
		u8 module, u8 data, u8 address)
{
	u8 check = 0xFF;

	if ((FUNC2(module, data, address) >= 0) &&
	    (FUNC1(module, &check, address) >= 0) &&
						(check == data))
		return 0;
	FUNC0(twl->dev, "Write%d[%d,0x%x] wrote %02x but read %02x\n",
			1, module, address, check, data);

	/* Failed once: Try again */
	if ((FUNC2(module, data, address) >= 0) &&
	    (FUNC1(module, &check, address) >= 0) &&
						(check == data))
		return 0;
	FUNC0(twl->dev, "Write%d[%d,0x%x] wrote %02x but read %02x\n",
			2, module, address, check, data);

	/* Failed again: Return error */
	return -EBUSY;
}