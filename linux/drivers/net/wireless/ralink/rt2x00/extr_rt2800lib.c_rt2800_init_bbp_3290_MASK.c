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
typedef  int u8 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP3_ADC_INIT_MODE ; 
 int /*<<< orphan*/  BBP3_ADC_MODE_SWITCH ; 
 int /*<<< orphan*/  BBP47_TSSI_ADC6 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 int FUNC1 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev)
{
	u8 value;

	FUNC0(rt2x00dev);

	FUNC2(rt2x00dev, 31, 0x08);

	FUNC2(rt2x00dev, 65, 0x2c);
	FUNC2(rt2x00dev, 66, 0x38);

	FUNC2(rt2x00dev, 68, 0x0b);

	FUNC2(rt2x00dev, 69, 0x12);
	FUNC2(rt2x00dev, 73, 0x13);
	FUNC2(rt2x00dev, 75, 0x46);
	FUNC2(rt2x00dev, 76, 0x28);

	FUNC2(rt2x00dev, 77, 0x58);

	FUNC2(rt2x00dev, 70, 0x0a);

	FUNC2(rt2x00dev, 74, 0x0b);
	FUNC2(rt2x00dev, 79, 0x18);
	FUNC2(rt2x00dev, 80, 0x09);
	FUNC2(rt2x00dev, 81, 0x33);

	FUNC2(rt2x00dev, 82, 0x62);

	FUNC2(rt2x00dev, 83, 0x7a);

	FUNC2(rt2x00dev, 84, 0x9a);

	FUNC2(rt2x00dev, 86, 0x38);

	FUNC2(rt2x00dev, 91, 0x04);

	FUNC2(rt2x00dev, 92, 0x02);

	FUNC2(rt2x00dev, 103, 0xc0);

	FUNC2(rt2x00dev, 104, 0x92);

	FUNC2(rt2x00dev, 105, 0x1c);

	FUNC2(rt2x00dev, 106, 0x03);

	FUNC2(rt2x00dev, 128, 0x12);

	FUNC2(rt2x00dev, 67, 0x24);
	FUNC2(rt2x00dev, 143, 0x04);
	FUNC2(rt2x00dev, 142, 0x99);
	FUNC2(rt2x00dev, 150, 0x30);
	FUNC2(rt2x00dev, 151, 0x2e);
	FUNC2(rt2x00dev, 152, 0x20);
	FUNC2(rt2x00dev, 153, 0x34);
	FUNC2(rt2x00dev, 154, 0x40);
	FUNC2(rt2x00dev, 155, 0x3b);
	FUNC2(rt2x00dev, 253, 0x04);

	value = FUNC1(rt2x00dev, 47);
	FUNC3(&value, BBP47_TSSI_ADC6, 1);
	FUNC2(rt2x00dev, 47, value);

	/* Use 5-bit ADC for Acquisition and 8-bit ADC for data */
	value = FUNC1(rt2x00dev, 3);
	FUNC3(&value, BBP3_ADC_MODE_SWITCH, 1);
	FUNC3(&value, BBP3_ADC_INIT_MODE, 1);
	FUNC2(rt2x00dev, 3, value);
}