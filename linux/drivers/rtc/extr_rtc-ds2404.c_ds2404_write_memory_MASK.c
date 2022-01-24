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
typedef  int u8 ;
typedef  int u16 ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int DS2404_COPY_SCRATCHPAD_CMD ; 
 size_t DS2404_DQ ; 
 int DS2404_READ_SCRATCHPAD_CMD ; 
 int DS2404_WRITE_SCRATCHPAD_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 TYPE_1__* ds2404_gpio ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct device *dev, u16 offset,
				int length, u8 *out)
{
	int i;
	u8 ta01, ta02, es;

	FUNC2(dev);
	FUNC3(dev, DS2404_WRITE_SCRATCHPAD_CMD);
	FUNC3(dev, offset & 0xff);
	FUNC3(dev, (offset >> 8) & 0xff);

	for (i = 0; i < length; i++)
		FUNC3(dev, out[i]);

	FUNC2(dev);
	FUNC3(dev, DS2404_READ_SCRATCHPAD_CMD);

	ta01 = FUNC1(dev);
	ta02 = FUNC1(dev);
	es = FUNC1(dev);

	for (i = 0; i < length; i++) {
		if (out[i] != FUNC1(dev)) {
			FUNC0(dev, "read invalid data\n");
			return;
		}
	}

	FUNC2(dev);
	FUNC3(dev, DS2404_COPY_SCRATCHPAD_CMD);
	FUNC3(dev, ta01);
	FUNC3(dev, ta02);
	FUNC3(dev, es);

	FUNC4(ds2404_gpio[DS2404_DQ].gpio);
	while (FUNC5(ds2404_gpio[DS2404_DQ].gpio))
		;
}