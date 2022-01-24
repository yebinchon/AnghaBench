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
typedef  int /*<<< orphan*/  u32 ;
struct ufx_data {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ufx_data*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ufx_data*,int,int) ; 

__attribute__((used)) static int FUNC5(struct ufx_data *dev)
{
	int status, i = 0;
	u32 tmp;

	status = FUNC4(dev, 0x0004, 0x001F0F77);
	FUNC1(status, "error writing 0x0004");

	status = FUNC4(dev, 0x0008, 0xFFF00000);
	FUNC1(status, "error writing 0x0008");

	status = FUNC4(dev, 0x000C, 0x0FFF2222);
	FUNC1(status, "error writing 0x000C");

	status = FUNC4(dev, 0x0010, 0x00030814);
	FUNC1(status, "error writing 0x0010");

	status = FUNC4(dev, 0x0014, 0x00500019);
	FUNC1(status, "error writing 0x0014");

	status = FUNC4(dev, 0x0018, 0x020D0F15);
	FUNC1(status, "error writing 0x0018");

	status = FUNC4(dev, 0x001C, 0x02532305);
	FUNC1(status, "error writing 0x001C");

	status = FUNC4(dev, 0x0020, 0x0B030905);
	FUNC1(status, "error writing 0x0020");

	status = FUNC4(dev, 0x0024, 0x00000827);
	FUNC1(status, "error writing 0x0024");

	status = FUNC4(dev, 0x0028, 0x00000000);
	FUNC1(status, "error writing 0x0028");

	status = FUNC4(dev, 0x002C, 0x00000042);
	FUNC1(status, "error writing 0x002C");

	status = FUNC4(dev, 0x0030, 0x09520000);
	FUNC1(status, "error writing 0x0030");

	status = FUNC4(dev, 0x0034, 0x02223314);
	FUNC1(status, "error writing 0x0034");

	status = FUNC4(dev, 0x0038, 0x00430043);
	FUNC1(status, "error writing 0x0038");

	status = FUNC4(dev, 0x003C, 0xF00F000F);
	FUNC1(status, "error writing 0x003C");

	status = FUNC4(dev, 0x0040, 0xF380F00F);
	FUNC1(status, "error writing 0x0040");

	status = FUNC4(dev, 0x0044, 0xF00F0496);
	FUNC1(status, "error writing 0x0044");

	status = FUNC4(dev, 0x0048, 0x03080406);
	FUNC1(status, "error writing 0x0048");

	status = FUNC4(dev, 0x004C, 0x00001000);
	FUNC1(status, "error writing 0x004C");

	status = FUNC4(dev, 0x005C, 0x00000007);
	FUNC1(status, "error writing 0x005C");

	status = FUNC4(dev, 0x0100, 0x54F00012);
	FUNC1(status, "error writing 0x0100");

	status = FUNC4(dev, 0x0104, 0x00004012);
	FUNC1(status, "error writing 0x0104");

	status = FUNC4(dev, 0x0118, 0x40404040);
	FUNC1(status, "error writing 0x0118");

	status = FUNC4(dev, 0x0000, 0x00000001);
	FUNC1(status, "error writing 0x0000");

	while (i++ < 500) {
		status = FUNC3(dev, 0x0000, &tmp);
		FUNC1(status, "error reading 0x0000");

		if (FUNC0(tmp, 0xC0000000))
			return 0;
	}

	FUNC2("DDR2 initialisation timed out, reg 0x0000=0x%08x", tmp);
	return -ETIMEDOUT;
}