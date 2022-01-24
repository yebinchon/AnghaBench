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
 int /*<<< orphan*/  RFCSR29_RSSI_GAIN ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int) ; 
 int FUNC3 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev)
{
	u8 rfcsr;

	FUNC2(rt2x00dev, 2);

	FUNC4(rt2x00dev, 1, 0x0f);
	FUNC4(rt2x00dev, 2, 0x80);
	FUNC4(rt2x00dev, 3, 0x08);
	FUNC4(rt2x00dev, 4, 0x00);
	FUNC4(rt2x00dev, 6, 0xa0);
	FUNC4(rt2x00dev, 8, 0xf3);
	FUNC4(rt2x00dev, 9, 0x02);
	FUNC4(rt2x00dev, 10, 0x53);
	FUNC4(rt2x00dev, 11, 0x4a);
	FUNC4(rt2x00dev, 12, 0x46);
	FUNC4(rt2x00dev, 13, 0x9f);
	FUNC4(rt2x00dev, 18, 0x02);
	FUNC4(rt2x00dev, 22, 0x20);
	FUNC4(rt2x00dev, 25, 0x83);
	FUNC4(rt2x00dev, 26, 0x82);
	FUNC4(rt2x00dev, 27, 0x09);
	FUNC4(rt2x00dev, 29, 0x10);
	FUNC4(rt2x00dev, 30, 0x10);
	FUNC4(rt2x00dev, 31, 0x80);
	FUNC4(rt2x00dev, 32, 0x80);
	FUNC4(rt2x00dev, 33, 0x00);
	FUNC4(rt2x00dev, 34, 0x05);
	FUNC4(rt2x00dev, 35, 0x12);
	FUNC4(rt2x00dev, 36, 0x00);
	FUNC4(rt2x00dev, 38, 0x85);
	FUNC4(rt2x00dev, 39, 0x1b);
	FUNC4(rt2x00dev, 40, 0x0b);
	FUNC4(rt2x00dev, 41, 0xbb);
	FUNC4(rt2x00dev, 42, 0xd5);
	FUNC4(rt2x00dev, 43, 0x7b);
	FUNC4(rt2x00dev, 44, 0x0e);
	FUNC4(rt2x00dev, 45, 0xa2);
	FUNC4(rt2x00dev, 46, 0x73);
	FUNC4(rt2x00dev, 47, 0x00);
	FUNC4(rt2x00dev, 48, 0x10);
	FUNC4(rt2x00dev, 49, 0x98);
	FUNC4(rt2x00dev, 52, 0x38);
	FUNC4(rt2x00dev, 53, 0x00);
	FUNC4(rt2x00dev, 54, 0x78);
	FUNC4(rt2x00dev, 55, 0x43);
	FUNC4(rt2x00dev, 56, 0x02);
	FUNC4(rt2x00dev, 57, 0x80);
	FUNC4(rt2x00dev, 58, 0x7f);
	FUNC4(rt2x00dev, 59, 0x09);
	FUNC4(rt2x00dev, 60, 0x45);
	FUNC4(rt2x00dev, 61, 0xc1);

	rfcsr = FUNC3(rt2x00dev, 29);
	FUNC5(&rfcsr, RFCSR29_RSSI_GAIN, 3);
	FUNC4(rt2x00dev, 29, rfcsr);

	FUNC0(rt2x00dev);
	FUNC1(rt2x00dev);
}