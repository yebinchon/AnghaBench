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
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 

__attribute__((used)) static void FUNC2(struct rt2x00_dev *rt2x00dev)
{
	FUNC1(rt2x00dev);

	FUNC0(rt2x00dev, 4, 0x50);
	FUNC0(rt2x00dev, 47, 0x48);

	FUNC0(rt2x00dev, 86, 0x46);
	FUNC0(rt2x00dev, 88, 0x90);

	FUNC0(rt2x00dev, 92, 0x02);

	FUNC0(rt2x00dev, 103, 0xc0);
	FUNC0(rt2x00dev, 104, 0x92);
	FUNC0(rt2x00dev, 105, 0x34);
	FUNC0(rt2x00dev, 106, 0x12);
	FUNC0(rt2x00dev, 120, 0x50);
	FUNC0(rt2x00dev, 137, 0x0f);
	FUNC0(rt2x00dev, 163, 0x9d);

	/* Set ITxBF timeout to 0x9C40=1000msec */
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
}