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
 int /*<<< orphan*/  CAPABILITY_CONTROL_FILTERS ; 
 int /*<<< orphan*/  CAPABILITY_HW_CRYPTO ; 
 int /*<<< orphan*/  CAPABILITY_LINK_TUNING ; 
 int /*<<< orphan*/  DEFAULT_RSSI_OFFSET ; 
 int /*<<< orphan*/  MAC_CSR13 ; 
 int /*<<< orphan*/  MAC_CSR13_DIR7 ; 
 int /*<<< orphan*/  REQUIRE_FIRMWARE ; 
 int /*<<< orphan*/  REQUIRE_PS_AUTOWAKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  modparam_nohwcrypt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rt2x00_dev*) ; 
 int FUNC5 (struct rt2x00_dev*) ; 
 int FUNC6 (struct rt2x00_dev*) ; 

__attribute__((used)) static int FUNC7(struct rt2x00_dev *rt2x00dev)
{
	int retval;
	u32 reg;

	/*
	 * Allocate eeprom data.
	 */
	retval = FUNC6(rt2x00dev);
	if (retval)
		return retval;

	retval = FUNC4(rt2x00dev);
	if (retval)
		return retval;

	/*
	 * Enable rfkill polling by setting GPIO direction of the
	 * rfkill switch GPIO pin correctly.
	 */
	reg = FUNC2(rt2x00dev, MAC_CSR13);
	FUNC1(&reg, MAC_CSR13_DIR7, 0);
	FUNC3(rt2x00dev, MAC_CSR13, reg);

	/*
	 * Initialize hw specifications.
	 */
	retval = FUNC5(rt2x00dev);
	if (retval)
		return retval;

	/*
	 * This device has multiple filters for control frames,
	 * but has no a separate filter for PS Poll frames.
	 */
	FUNC0(CAPABILITY_CONTROL_FILTERS, &rt2x00dev->cap_flags);

	/*
	 * This device requires firmware.
	 */
	FUNC0(REQUIRE_FIRMWARE, &rt2x00dev->cap_flags);
	if (!modparam_nohwcrypt)
		FUNC0(CAPABILITY_HW_CRYPTO, &rt2x00dev->cap_flags);
	FUNC0(CAPABILITY_LINK_TUNING, &rt2x00dev->cap_flags);
	FUNC0(REQUIRE_PS_AUTOWAKE, &rt2x00dev->cap_flags);

	/*
	 * Set the rssi offset.
	 */
	rt2x00dev->rssi_offset = DEFAULT_RSSI_OFFSET;

	return 0;
}