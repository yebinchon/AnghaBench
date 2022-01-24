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
struct rf_channel {int channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct rt2x00_dev *rt2x00dev,
			      struct rf_channel *rf)
{
	u8 bbp;

	bbp = (rf->channel > 14) ? 0x48 : 0x38;
	FUNC1(rt2x00dev, 66, bbp);

	FUNC0(rt2x00dev, 69, 0x12);

	if (rf->channel <= 14) {
		FUNC0(rt2x00dev, 70, 0x0a);
	} else {
		/* Disable CCK packet detection */
		FUNC0(rt2x00dev, 70, 0x00);
	}

	FUNC0(rt2x00dev, 73, 0x10);

	if (rf->channel > 14) {
		FUNC0(rt2x00dev, 62, 0x1d);
		FUNC0(rt2x00dev, 63, 0x1d);
		FUNC0(rt2x00dev, 64, 0x1d);
	} else {
		FUNC0(rt2x00dev, 62, 0x2d);
		FUNC0(rt2x00dev, 63, 0x2d);
		FUNC0(rt2x00dev, 64, 0x2d);
	}
}