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
 int /*<<< orphan*/  RFCSR1_RF_BLOCK_EN ; 
 int /*<<< orphan*/  RFCSR2_RESCAL_BP ; 
 int /*<<< orphan*/  RFCSR2_RESCAL_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int) ; 
 int FUNC3 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev)
{
	u8 rfcsr;

	/* TODO: get the actual ECO value from the SoC */
	const unsigned int eco = 5;

	FUNC2(rt2x00dev, 2);

	FUNC4(rt2x00dev, 0, 0xe0);
	FUNC4(rt2x00dev, 1, 0x03);
	FUNC4(rt2x00dev, 2, 0x50);
	FUNC4(rt2x00dev, 3, 0x20);
	FUNC4(rt2x00dev, 4, 0x00);
	FUNC4(rt2x00dev, 5, 0x00);
	FUNC4(rt2x00dev, 6, 0x40);
	FUNC4(rt2x00dev, 7, 0x00);
	FUNC4(rt2x00dev, 8, 0x5b);
	FUNC4(rt2x00dev, 9, 0x08);
	FUNC4(rt2x00dev, 10, 0xd3);
	FUNC4(rt2x00dev, 11, 0x48);
	FUNC4(rt2x00dev, 12, 0x1a);
	FUNC4(rt2x00dev, 13, 0x12);
	FUNC4(rt2x00dev, 14, 0x00);
	FUNC4(rt2x00dev, 15, 0x00);
	FUNC4(rt2x00dev, 16, 0x00);

	/* RFCSR 17 will be initialized later based on the
	 * frequency offset stored in the EEPROM
	 */

	FUNC4(rt2x00dev, 18, 0x40);
	FUNC4(rt2x00dev, 19, 0x00);
	FUNC4(rt2x00dev, 20, 0x00);
	FUNC4(rt2x00dev, 21, 0x00);
	FUNC4(rt2x00dev, 22, 0x20);
	FUNC4(rt2x00dev, 23, 0xc0);
	FUNC4(rt2x00dev, 24, 0x00);
	FUNC4(rt2x00dev, 25, 0x00);
	FUNC4(rt2x00dev, 26, 0x00);
	FUNC4(rt2x00dev, 27, 0x00);
	FUNC4(rt2x00dev, 28, 0x00);
	FUNC4(rt2x00dev, 29, 0x00);
	FUNC4(rt2x00dev, 30, 0x10);
	FUNC4(rt2x00dev, 31, 0x80);
	FUNC4(rt2x00dev, 32, 0x80);
	FUNC4(rt2x00dev, 33, 0x00);
	FUNC4(rt2x00dev, 34, 0x20);
	FUNC4(rt2x00dev, 35, 0x00);
	FUNC4(rt2x00dev, 36, 0x00);
	FUNC4(rt2x00dev, 37, 0x00);
	FUNC4(rt2x00dev, 38, 0x86);
	FUNC4(rt2x00dev, 39, 0x23);
	FUNC4(rt2x00dev, 40, 0x00);
	FUNC4(rt2x00dev, 41, 0x00);
	FUNC4(rt2x00dev, 42, 0x00);
	FUNC4(rt2x00dev, 43, 0x00);
	FUNC4(rt2x00dev, 44, 0x93);
	FUNC4(rt2x00dev, 45, 0xbb);
	FUNC4(rt2x00dev, 46, 0x60);
	FUNC4(rt2x00dev, 47, 0x00);
	FUNC4(rt2x00dev, 48, 0x00);
	FUNC4(rt2x00dev, 49, 0x8e);
	FUNC4(rt2x00dev, 50, 0x86);
	FUNC4(rt2x00dev, 51, 0x51);
	FUNC4(rt2x00dev, 52, 0x05);
	FUNC4(rt2x00dev, 53, 0x76);
	FUNC4(rt2x00dev, 54, 0x76);
	FUNC4(rt2x00dev, 55, 0x76);
	FUNC4(rt2x00dev, 56, 0xdb);
	FUNC4(rt2x00dev, 57, 0x3e);
	FUNC4(rt2x00dev, 58, 0x00);
	FUNC4(rt2x00dev, 59, 0x00);
	FUNC4(rt2x00dev, 60, 0x00);
	FUNC4(rt2x00dev, 61, 0x00);
	FUNC4(rt2x00dev, 62, 0x00);
	FUNC4(rt2x00dev, 63, 0x00);

	/* TODO: rx filter calibration? */

	FUNC1(rt2x00dev, 137, 0x0f);

	FUNC1(rt2x00dev, 163, 0x9d);

	FUNC1(rt2x00dev, 105, 0x05);

	FUNC1(rt2x00dev, 179, 0x02);
	FUNC1(rt2x00dev, 180, 0x00);
	FUNC1(rt2x00dev, 182, 0x40);
	FUNC1(rt2x00dev, 180, 0x01);
	FUNC1(rt2x00dev, 182, 0x9c);

	FUNC1(rt2x00dev, 179, 0x00);

	FUNC1(rt2x00dev, 142, 0x04);
	FUNC1(rt2x00dev, 143, 0x3b);
	FUNC1(rt2x00dev, 142, 0x06);
	FUNC1(rt2x00dev, 143, 0xa0);
	FUNC1(rt2x00dev, 142, 0x07);
	FUNC1(rt2x00dev, 143, 0xa1);
	FUNC1(rt2x00dev, 142, 0x08);
	FUNC1(rt2x00dev, 143, 0xa2);
	FUNC1(rt2x00dev, 148, 0xc8);

	if (eco == 5) {
		FUNC4(rt2x00dev, 32, 0xd8);
		FUNC4(rt2x00dev, 33, 0x32);
	}

	rfcsr = FUNC3(rt2x00dev, 2);
	FUNC5(&rfcsr, RFCSR2_RESCAL_BP, 0);
	FUNC5(&rfcsr, RFCSR2_RESCAL_EN, 1);
	FUNC4(rt2x00dev, 2, rfcsr);
	FUNC0(1);
	FUNC5(&rfcsr, RFCSR2_RESCAL_EN, 0);
	FUNC4(rt2x00dev, 2, rfcsr);

	rfcsr = FUNC3(rt2x00dev, 1);
	FUNC5(&rfcsr, RFCSR1_RF_BLOCK_EN, 1);
	FUNC4(rt2x00dev, 1, rfcsr);

	rfcsr = FUNC3(rt2x00dev, 6);
	rfcsr |= 0xc0;
	FUNC4(rt2x00dev, 6, rfcsr);

	rfcsr = FUNC3(rt2x00dev, 22);
	rfcsr |= 0x20;
	FUNC4(rt2x00dev, 22, rfcsr);

	rfcsr = FUNC3(rt2x00dev, 46);
	rfcsr |= 0x20;
	FUNC4(rt2x00dev, 46, rfcsr);

	rfcsr = FUNC3(rt2x00dev, 20);
	rfcsr &= ~0xee;
	FUNC4(rt2x00dev, 20, rfcsr);
}