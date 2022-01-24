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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5350 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int,int) ; 
 scalar_t__ FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rt2x00_dev *rt2x00dev)
{
	FUNC0(rt2x00dev, 3, 0x00);
	FUNC0(rt2x00dev, 4, 0x50);

	FUNC0(rt2x00dev, 31, 0x08);

	FUNC0(rt2x00dev, 47, 0x48);

	FUNC0(rt2x00dev, 65, 0x2c);
	FUNC0(rt2x00dev, 66, 0x38);

	FUNC0(rt2x00dev, 68, 0x0b);

	FUNC0(rt2x00dev, 69, 0x12);
	FUNC0(rt2x00dev, 73, 0x13);
	FUNC0(rt2x00dev, 75, 0x46);
	FUNC0(rt2x00dev, 76, 0x28);

	FUNC0(rt2x00dev, 77, 0x59);

	FUNC0(rt2x00dev, 70, 0x0a);

	FUNC0(rt2x00dev, 78, 0x0e);
	FUNC0(rt2x00dev, 80, 0x08);
	FUNC0(rt2x00dev, 81, 0x37);

	FUNC0(rt2x00dev, 82, 0x62);

	if (FUNC1(rt2x00dev, RT5350)) {
		FUNC0(rt2x00dev, 83, 0x7a);
		FUNC0(rt2x00dev, 84, 0x9a);
	} else {
		FUNC0(rt2x00dev, 83, 0x6a);
		FUNC0(rt2x00dev, 84, 0x99);
	}

	FUNC0(rt2x00dev, 86, 0x38);

	FUNC0(rt2x00dev, 88, 0x90);

	FUNC0(rt2x00dev, 91, 0x04);

	FUNC0(rt2x00dev, 92, 0x02);

	FUNC0(rt2x00dev, 103, 0xc0);

	FUNC0(rt2x00dev, 104, 0x92);

	if (FUNC1(rt2x00dev, RT5350)) {
		FUNC0(rt2x00dev, 105, 0x3c);
		FUNC0(rt2x00dev, 106, 0x03);
	} else {
		FUNC0(rt2x00dev, 105, 0x34);
		FUNC0(rt2x00dev, 106, 0x05);
	}

	FUNC0(rt2x00dev, 120, 0x50);

	FUNC0(rt2x00dev, 137, 0x0f);

	FUNC0(rt2x00dev, 163, 0xbd);
	/* Set ITxBF timeout to 0x9c40=1000msec */
	FUNC0(rt2x00dev, 179, 0x02);
	FUNC0(rt2x00dev, 180, 0x00);
	FUNC0(rt2x00dev, 182, 0x40);
	FUNC0(rt2x00dev, 180, 0x01);
	FUNC0(rt2x00dev, 182, 0x9c);
	FUNC0(rt2x00dev, 179, 0x00);
	/* Reprogram the inband interface to put right values in RXWI */
	FUNC0(rt2x00dev, 142, 0x04);
	FUNC0(rt2x00dev, 143, 0x3b);
	FUNC0(rt2x00dev, 142, 0x06);
	FUNC0(rt2x00dev, 143, 0xa0);
	FUNC0(rt2x00dev, 142, 0x07);
	FUNC0(rt2x00dev, 143, 0xa1);
	FUNC0(rt2x00dev, 142, 0x08);
	FUNC0(rt2x00dev, 143, 0xa2);

	FUNC0(rt2x00dev, 148, 0xc8);

	if (FUNC1(rt2x00dev, RT5350)) {
		/* Antenna Software OFDM */
		FUNC0(rt2x00dev, 150, 0x40);
		/* Antenna Software CCK */
		FUNC0(rt2x00dev, 151, 0x30);
		FUNC0(rt2x00dev, 152, 0xa3);
		/* Clear previously selected antenna */
		FUNC0(rt2x00dev, 154, 0);
	}
}