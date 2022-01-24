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
struct rt2x00_dev {int freq_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int) ; 
 scalar_t__ FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int,int) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev)
{
	/* Initialize RF central register to default value */
	FUNC2(rt2x00dev, 0, 0x02);
	FUNC2(rt2x00dev, 1, 0x03);
	FUNC2(rt2x00dev, 2, 0x33);
	FUNC2(rt2x00dev, 3, 0xFF);
	FUNC2(rt2x00dev, 4, 0x0C);
	FUNC2(rt2x00dev, 5, 0x40);
	FUNC2(rt2x00dev, 6, 0x00);
	FUNC2(rt2x00dev, 7, 0x00);
	FUNC2(rt2x00dev, 8, 0x00);
	FUNC2(rt2x00dev, 9, 0x00);
	FUNC2(rt2x00dev, 10, 0x00);
	FUNC2(rt2x00dev, 11, 0x00);
	FUNC2(rt2x00dev, 12, rt2x00dev->freq_offset);
	FUNC2(rt2x00dev, 13, 0x00);
	FUNC2(rt2x00dev, 14, 0x40);
	FUNC2(rt2x00dev, 15, 0x22);
	FUNC2(rt2x00dev, 16, 0x4C);
	FUNC2(rt2x00dev, 17, 0x00);
	FUNC2(rt2x00dev, 18, 0x00);
	FUNC2(rt2x00dev, 19, 0x00);
	FUNC2(rt2x00dev, 20, 0xA0);
	FUNC2(rt2x00dev, 21, 0x12);
	FUNC2(rt2x00dev, 22, 0x07);
	FUNC2(rt2x00dev, 23, 0x13);
	FUNC2(rt2x00dev, 24, 0xFE);
	FUNC2(rt2x00dev, 25, 0x24);
	FUNC2(rt2x00dev, 26, 0x7A);
	FUNC2(rt2x00dev, 27, 0x00);
	FUNC2(rt2x00dev, 28, 0x00);
	FUNC2(rt2x00dev, 29, 0x05);
	FUNC2(rt2x00dev, 30, 0x00);
	FUNC2(rt2x00dev, 31, 0x00);
	FUNC2(rt2x00dev, 32, 0x00);
	FUNC2(rt2x00dev, 33, 0x00);
	FUNC2(rt2x00dev, 34, 0x00);
	FUNC2(rt2x00dev, 35, 0x00);
	FUNC2(rt2x00dev, 36, 0x00);
	FUNC2(rt2x00dev, 37, 0x00);
	FUNC2(rt2x00dev, 38, 0x00);
	FUNC2(rt2x00dev, 39, 0x00);
	FUNC2(rt2x00dev, 40, 0x00);
	FUNC2(rt2x00dev, 41, 0xD0);
	FUNC2(rt2x00dev, 42, 0x5B);
	FUNC2(rt2x00dev, 43, 0x00);

	FUNC2(rt2x00dev, 11, 0x21);
	if (FUNC1(rt2x00dev))
		FUNC2(rt2x00dev, 13, 0x03);
	else
		FUNC2(rt2x00dev, 13, 0x00);
	FUNC2(rt2x00dev, 14, 0x7C);
	FUNC2(rt2x00dev, 16, 0x80);
	FUNC2(rt2x00dev, 17, 0x99);
	FUNC2(rt2x00dev, 18, 0x99);
	FUNC2(rt2x00dev, 19, 0x09);
	FUNC2(rt2x00dev, 20, 0x50);
	FUNC2(rt2x00dev, 21, 0xB0);
	FUNC2(rt2x00dev, 22, 0x00);
	FUNC2(rt2x00dev, 23, 0x06);
	FUNC2(rt2x00dev, 24, 0x00);
	FUNC2(rt2x00dev, 25, 0x00);
	FUNC2(rt2x00dev, 26, 0x5D);
	FUNC2(rt2x00dev, 27, 0x00);
	FUNC2(rt2x00dev, 28, 0x61);
	FUNC2(rt2x00dev, 29, 0xB5);
	FUNC2(rt2x00dev, 43, 0x02);

	FUNC2(rt2x00dev, 28, 0x62);
	FUNC2(rt2x00dev, 29, 0xAD);
	FUNC2(rt2x00dev, 39, 0x80);

	/* Initialize RF channel register to default value */
	FUNC4(rt2x00dev, 0, 0x03);
	FUNC4(rt2x00dev, 1, 0x00);
	FUNC4(rt2x00dev, 2, 0x00);
	FUNC4(rt2x00dev, 3, 0x00);
	FUNC4(rt2x00dev, 4, 0x00);
	FUNC4(rt2x00dev, 5, 0x08);
	FUNC4(rt2x00dev, 6, 0x00);
	FUNC4(rt2x00dev, 7, 0x51);
	FUNC4(rt2x00dev, 8, 0x53);
	FUNC4(rt2x00dev, 9, 0x16);
	FUNC4(rt2x00dev, 10, 0x61);
	FUNC4(rt2x00dev, 11, 0x53);
	FUNC4(rt2x00dev, 12, 0x22);
	FUNC4(rt2x00dev, 13, 0x3D);
	FUNC4(rt2x00dev, 14, 0x06);
	FUNC4(rt2x00dev, 15, 0x13);
	FUNC4(rt2x00dev, 16, 0x22);
	FUNC4(rt2x00dev, 17, 0x27);
	FUNC4(rt2x00dev, 18, 0x02);
	FUNC4(rt2x00dev, 19, 0xA7);
	FUNC4(rt2x00dev, 20, 0x01);
	FUNC4(rt2x00dev, 21, 0x52);
	FUNC4(rt2x00dev, 22, 0x80);
	FUNC4(rt2x00dev, 23, 0xB3);
	FUNC4(rt2x00dev, 24, 0x00);
	FUNC4(rt2x00dev, 25, 0x00);
	FUNC4(rt2x00dev, 26, 0x00);
	FUNC4(rt2x00dev, 27, 0x00);
	FUNC4(rt2x00dev, 28, 0x5C);
	FUNC4(rt2x00dev, 29, 0x6B);
	FUNC4(rt2x00dev, 30, 0x6B);
	FUNC4(rt2x00dev, 31, 0x31);
	FUNC4(rt2x00dev, 32, 0x5D);
	FUNC4(rt2x00dev, 33, 0x00);
	FUNC4(rt2x00dev, 34, 0xE6);
	FUNC4(rt2x00dev, 35, 0x55);
	FUNC4(rt2x00dev, 36, 0x00);
	FUNC4(rt2x00dev, 37, 0xBB);
	FUNC4(rt2x00dev, 38, 0xB3);
	FUNC4(rt2x00dev, 39, 0xB3);
	FUNC4(rt2x00dev, 40, 0x03);
	FUNC4(rt2x00dev, 41, 0x00);
	FUNC4(rt2x00dev, 42, 0x00);
	FUNC4(rt2x00dev, 43, 0xB3);
	FUNC4(rt2x00dev, 44, 0xD3);
	FUNC4(rt2x00dev, 45, 0xD5);
	FUNC4(rt2x00dev, 46, 0x07);
	FUNC4(rt2x00dev, 47, 0x68);
	FUNC4(rt2x00dev, 48, 0xEF);
	FUNC4(rt2x00dev, 49, 0x1C);
	FUNC4(rt2x00dev, 54, 0x07);
	FUNC4(rt2x00dev, 55, 0xA8);
	FUNC4(rt2x00dev, 56, 0x85);
	FUNC4(rt2x00dev, 57, 0x10);
	FUNC4(rt2x00dev, 58, 0x07);
	FUNC4(rt2x00dev, 59, 0x6A);
	FUNC4(rt2x00dev, 60, 0x85);
	FUNC4(rt2x00dev, 61, 0x10);
	FUNC4(rt2x00dev, 62, 0x1C);
	FUNC4(rt2x00dev, 63, 0x00);

	FUNC3(rt2x00dev, 6, 45, 0xC5);

	FUNC4(rt2x00dev, 9, 0x47);
	FUNC4(rt2x00dev, 10, 0x71);
	FUNC4(rt2x00dev, 11, 0x33);
	FUNC4(rt2x00dev, 14, 0x0E);
	FUNC4(rt2x00dev, 17, 0x23);
	FUNC4(rt2x00dev, 19, 0xA4);
	FUNC4(rt2x00dev, 20, 0x02);
	FUNC4(rt2x00dev, 21, 0x12);
	FUNC4(rt2x00dev, 28, 0x1C);
	FUNC4(rt2x00dev, 29, 0xEB);
	FUNC4(rt2x00dev, 32, 0x7D);
	FUNC4(rt2x00dev, 34, 0xD6);
	FUNC4(rt2x00dev, 36, 0x08);
	FUNC4(rt2x00dev, 38, 0xB4);
	FUNC4(rt2x00dev, 43, 0xD3);
	FUNC4(rt2x00dev, 44, 0xB3);
	FUNC4(rt2x00dev, 45, 0xD5);
	FUNC4(rt2x00dev, 46, 0x27);
	FUNC3(rt2x00dev, 4, 47, 0x67);
	FUNC3(rt2x00dev, 6, 47, 0x69);
	FUNC4(rt2x00dev, 48, 0xFF);
	FUNC3(rt2x00dev, 4, 54, 0x27);
	FUNC3(rt2x00dev, 6, 54, 0x20);
	FUNC4(rt2x00dev, 55, 0x66);
	FUNC4(rt2x00dev, 56, 0xFF);
	FUNC4(rt2x00dev, 57, 0x1C);
	FUNC4(rt2x00dev, 58, 0x20);
	FUNC4(rt2x00dev, 59, 0x6B);
	FUNC4(rt2x00dev, 60, 0xF7);
	FUNC4(rt2x00dev, 61, 0x09);

	FUNC4(rt2x00dev, 10, 0x51);
	FUNC4(rt2x00dev, 14, 0x06);
	FUNC4(rt2x00dev, 19, 0xA7);
	FUNC4(rt2x00dev, 28, 0x2C);
	FUNC4(rt2x00dev, 55, 0x64);
	FUNC4(rt2x00dev, 8, 0x51);
	FUNC4(rt2x00dev, 9, 0x36);
	FUNC4(rt2x00dev, 11, 0x53);
	FUNC4(rt2x00dev, 14, 0x16);

	FUNC4(rt2x00dev, 47, 0x6C);
	FUNC4(rt2x00dev, 48, 0xFC);
	FUNC4(rt2x00dev, 49, 0x1F);
	FUNC4(rt2x00dev, 54, 0x27);
	FUNC4(rt2x00dev, 55, 0x66);
	FUNC4(rt2x00dev, 59, 0x6B);

	/* Initialize RF channel register for DRQFN */
	FUNC4(rt2x00dev, 43, 0xD3);
	FUNC4(rt2x00dev, 44, 0xE3);
	FUNC4(rt2x00dev, 45, 0xE5);
	FUNC4(rt2x00dev, 47, 0x28);
	FUNC4(rt2x00dev, 55, 0x68);
	FUNC4(rt2x00dev, 56, 0xF7);
	FUNC4(rt2x00dev, 58, 0x02);
	FUNC4(rt2x00dev, 60, 0xC7);

	/* Initialize RF DC calibration register to default value */
	FUNC5(rt2x00dev, 0, 0x47);
	FUNC5(rt2x00dev, 1, 0x00);
	FUNC5(rt2x00dev, 2, 0x00);
	FUNC5(rt2x00dev, 3, 0x00);
	FUNC5(rt2x00dev, 4, 0x00);
	FUNC5(rt2x00dev, 5, 0x00);
	FUNC5(rt2x00dev, 6, 0x10);
	FUNC5(rt2x00dev, 7, 0x10);
	FUNC5(rt2x00dev, 8, 0x04);
	FUNC5(rt2x00dev, 9, 0x00);
	FUNC5(rt2x00dev, 10, 0x07);
	FUNC5(rt2x00dev, 11, 0x01);
	FUNC5(rt2x00dev, 12, 0x07);
	FUNC5(rt2x00dev, 13, 0x07);
	FUNC5(rt2x00dev, 14, 0x07);
	FUNC5(rt2x00dev, 15, 0x20);
	FUNC5(rt2x00dev, 16, 0x22);
	FUNC5(rt2x00dev, 17, 0x00);
	FUNC5(rt2x00dev, 18, 0x00);
	FUNC5(rt2x00dev, 19, 0x00);
	FUNC5(rt2x00dev, 20, 0x00);
	FUNC5(rt2x00dev, 21, 0xF1);
	FUNC5(rt2x00dev, 22, 0x11);
	FUNC5(rt2x00dev, 23, 0x02);
	FUNC5(rt2x00dev, 24, 0x41);
	FUNC5(rt2x00dev, 25, 0x20);
	FUNC5(rt2x00dev, 26, 0x00);
	FUNC5(rt2x00dev, 27, 0xD7);
	FUNC5(rt2x00dev, 28, 0xA2);
	FUNC5(rt2x00dev, 29, 0x20);
	FUNC5(rt2x00dev, 30, 0x49);
	FUNC5(rt2x00dev, 31, 0x20);
	FUNC5(rt2x00dev, 32, 0x04);
	FUNC5(rt2x00dev, 33, 0xF1);
	FUNC5(rt2x00dev, 34, 0xA1);
	FUNC5(rt2x00dev, 35, 0x01);
	FUNC5(rt2x00dev, 41, 0x00);
	FUNC5(rt2x00dev, 42, 0x00);
	FUNC5(rt2x00dev, 43, 0x00);
	FUNC5(rt2x00dev, 44, 0x00);
	FUNC5(rt2x00dev, 45, 0x00);
	FUNC5(rt2x00dev, 46, 0x00);
	FUNC5(rt2x00dev, 47, 0x3E);
	FUNC5(rt2x00dev, 48, 0x3D);
	FUNC5(rt2x00dev, 49, 0x3E);
	FUNC5(rt2x00dev, 50, 0x3D);
	FUNC5(rt2x00dev, 51, 0x3E);
	FUNC5(rt2x00dev, 52, 0x3D);
	FUNC5(rt2x00dev, 53, 0x00);
	FUNC5(rt2x00dev, 54, 0x00);
	FUNC5(rt2x00dev, 55, 0x00);
	FUNC5(rt2x00dev, 56, 0x00);
	FUNC5(rt2x00dev, 57, 0x00);
	FUNC5(rt2x00dev, 58, 0x10);
	FUNC5(rt2x00dev, 59, 0x10);
	FUNC5(rt2x00dev, 60, 0x0A);
	FUNC5(rt2x00dev, 61, 0x00);
	FUNC5(rt2x00dev, 62, 0x00);
	FUNC5(rt2x00dev, 63, 0x00);

	FUNC5(rt2x00dev, 3, 0x08);
	FUNC5(rt2x00dev, 4, 0x04);
	FUNC5(rt2x00dev, 5, 0x20);

	FUNC5(rt2x00dev, 5, 0x00);
	FUNC5(rt2x00dev, 17, 0x7C);

	FUNC0(rt2x00dev, true);
	FUNC0(rt2x00dev, false);
}