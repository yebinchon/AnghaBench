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
typedef  int /*<<< orphan*/  u8 ;
struct rt2x00_dev {int dummy; } ;
struct antenna_setup {int rx; } ;

/* Variables and functions */
#define  ANTENNA_A 130 
#define  ANTENNA_B 129 
#define  ANTENNA_HW_DIVERSITY 128 
 int /*<<< orphan*/  BBP_R4_RX_ANTENNA_CONTROL ; 
 int /*<<< orphan*/  BBP_R77_RX_ANTENNA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev,
					struct antenna_setup *ant)
{
	u8 r3;
	u8 r4;
	u8 r77;

	r3 = FUNC1(rt2x00dev, 3);
	r4 = FUNC1(rt2x00dev, 4);
	r77 = FUNC1(rt2x00dev, 77);

	/*
	 * Configure the RX antenna.
	 */
	switch (ant->rx) {
	case ANTENNA_A:
		FUNC0(&r4, BBP_R4_RX_ANTENNA_CONTROL, 1);
		FUNC0(&r77, BBP_R77_RX_ANTENNA, 0);
		FUNC3(rt2x00dev, 0, 0);
		break;
	case ANTENNA_HW_DIVERSITY:
		/*
		 * FIXME: Antenna selection for the rf 2529 is very confusing
		 * in the legacy driver. Just default to antenna B until the
		 * legacy code can be properly translated into rt2x00 code.
		 */
	case ANTENNA_B:
	default:
		FUNC0(&r4, BBP_R4_RX_ANTENNA_CONTROL, 1);
		FUNC0(&r77, BBP_R77_RX_ANTENNA, 3);
		FUNC3(rt2x00dev, 1, 1);
		break;
	}

	FUNC2(rt2x00dev, 77, r77);
	FUNC2(rt2x00dev, 3, r3);
	FUNC2(rt2x00dev, 4, r4);
}