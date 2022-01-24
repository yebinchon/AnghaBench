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
struct rt2x00_dev {int /*<<< orphan*/  rssi_offset; int /*<<< orphan*/  cap_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_RSSI_OFFSET ; 
 int /*<<< orphan*/  GPIOCSR ; 
 int /*<<< orphan*/  GPIOCSR_DIR0 ; 
 int /*<<< orphan*/  REQUIRE_ATIM_QUEUE ; 
 int /*<<< orphan*/  REQUIRE_DMA ; 
 int /*<<< orphan*/  REQUIRE_SW_SEQNO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rt2x00_dev*) ; 
 int FUNC2 (struct rt2x00_dev*) ; 
 int FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rt2x00_dev *rt2x00dev)
{
	int retval;
	u32 reg;

	/*
	 * Allocate eeprom data.
	 */
	retval = FUNC3(rt2x00dev);
	if (retval)
		return retval;

	retval = FUNC1(rt2x00dev);
	if (retval)
		return retval;

	/*
	 * Enable rfkill polling by setting GPIO direction of the
	 * rfkill switch GPIO pin correctly.
	 */
	reg = FUNC5(rt2x00dev, GPIOCSR);
	FUNC4(&reg, GPIOCSR_DIR0, 1);
	FUNC6(rt2x00dev, GPIOCSR, reg);

	/*
	 * Initialize hw specifications.
	 */
	retval = FUNC2(rt2x00dev);
	if (retval)
		return retval;

	/*
	 * This device requires the atim queue and DMA-mapped skbs.
	 */
	FUNC0(REQUIRE_ATIM_QUEUE, &rt2x00dev->cap_flags);
	FUNC0(REQUIRE_DMA, &rt2x00dev->cap_flags);
	FUNC0(REQUIRE_SW_SEQNO, &rt2x00dev->cap_flags);

	/*
	 * Set the rssi offset.
	 */
	rt2x00dev->rssi_offset = DEFAULT_RSSI_OFFSET;

	return 0;
}