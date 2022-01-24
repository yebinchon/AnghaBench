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
struct rf_channel {int rf1; int rf3; int rf2; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNT0 ; 
 int /*<<< orphan*/  RF1_TUNER ; 
 int /*<<< orphan*/  RF2420 ; 
 int /*<<< orphan*/  RF3_TUNER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int) ; 
 scalar_t__ FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rt2x00_dev *rt2x00dev,
				     struct rf_channel *rf)
{
	/*
	 * Switch on tuning bits.
	 */
	FUNC3(&rf->rf1, RF1_TUNER, 1);
	FUNC3(&rf->rf3, RF3_TUNER, 1);

	FUNC1(rt2x00dev, 1, rf->rf1);
	FUNC1(rt2x00dev, 2, rf->rf2);
	FUNC1(rt2x00dev, 3, rf->rf3);

	/*
	 * RF2420 chipset don't need any additional actions.
	 */
	if (FUNC2(rt2x00dev, RF2420))
		return;

	/*
	 * For the RT2421 chipsets we need to write an invalid
	 * reference clock rate to activate auto_tune.
	 * After that we set the value back to the correct channel.
	 */
	FUNC1(rt2x00dev, 1, rf->rf1);
	FUNC1(rt2x00dev, 2, 0x000c2a32);
	FUNC1(rt2x00dev, 3, rf->rf3);

	FUNC0(1);

	FUNC1(rt2x00dev, 1, rf->rf1);
	FUNC1(rt2x00dev, 2, rf->rf2);
	FUNC1(rt2x00dev, 3, rf->rf3);

	FUNC0(1);

	/*
	 * Switch off tuning bits.
	 */
	FUNC3(&rf->rf1, RF1_TUNER, 0);
	FUNC3(&rf->rf3, RF3_TUNER, 0);

	FUNC1(rt2x00dev, 1, rf->rf1);
	FUNC1(rt2x00dev, 3, rf->rf3);

	/*
	 * Clear false CRC during channel switch.
	 */
	rf->rf1 = FUNC4(rt2x00dev, CNT0);
}