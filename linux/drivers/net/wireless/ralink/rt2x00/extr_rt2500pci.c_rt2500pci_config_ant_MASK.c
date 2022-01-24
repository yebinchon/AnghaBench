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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;
struct antenna_setup {int rx; int tx; } ;

/* Variables and functions */
#define  ANTENNA_A 129 
#define  ANTENNA_B 128 
 int ANTENNA_SW_DIVERSITY ; 
 int /*<<< orphan*/  BBPCSR1 ; 
 int /*<<< orphan*/  BBPCSR1_CCK ; 
 int /*<<< orphan*/  BBPCSR1_CCK_FLIP ; 
 int /*<<< orphan*/  BBPCSR1_OFDM ; 
 int /*<<< orphan*/  BBPCSR1_OFDM_FLIP ; 
 int /*<<< orphan*/  BBP_R14_RX_ANTENNA ; 
 int /*<<< orphan*/  BBP_R14_RX_IQ_FLIP ; 
 int /*<<< orphan*/  BBP_R2_TX_ANTENNA ; 
 int /*<<< orphan*/  BBP_R2_TX_IQ_FLIP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RF2525E ; 
 int /*<<< orphan*/  RF5222 ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct rt2x00_dev *rt2x00dev,
				 struct antenna_setup *ant)
{
	u32 reg;
	u8 r14;
	u8 r2;

	/*
	 * We should never come here because rt2x00lib is supposed
	 * to catch this and send us the correct antenna explicitely.
	 */
	FUNC0(ant->rx == ANTENNA_SW_DIVERSITY ||
	       ant->tx == ANTENNA_SW_DIVERSITY);

	reg = FUNC6(rt2x00dev, BBPCSR1);
	r14 = FUNC1(rt2x00dev, 14);
	r2 = FUNC1(rt2x00dev, 2);

	/*
	 * Configure the TX antenna.
	 */
	switch (ant->tx) {
	case ANTENNA_A:
		FUNC5(&r2, BBP_R2_TX_ANTENNA, 0);
		FUNC4(&reg, BBPCSR1_CCK, 0);
		FUNC4(&reg, BBPCSR1_OFDM, 0);
		break;
	case ANTENNA_B:
	default:
		FUNC5(&r2, BBP_R2_TX_ANTENNA, 2);
		FUNC4(&reg, BBPCSR1_CCK, 2);
		FUNC4(&reg, BBPCSR1_OFDM, 2);
		break;
	}

	/*
	 * Configure the RX antenna.
	 */
	switch (ant->rx) {
	case ANTENNA_A:
		FUNC5(&r14, BBP_R14_RX_ANTENNA, 0);
		break;
	case ANTENNA_B:
	default:
		FUNC5(&r14, BBP_R14_RX_ANTENNA, 2);
		break;
	}

	/*
	 * RT2525E and RT5222 need to flip TX I/Q
	 */
	if (FUNC3(rt2x00dev, RF2525E) || FUNC3(rt2x00dev, RF5222)) {
		FUNC5(&r2, BBP_R2_TX_IQ_FLIP, 1);
		FUNC4(&reg, BBPCSR1_CCK_FLIP, 1);
		FUNC4(&reg, BBPCSR1_OFDM_FLIP, 1);

		/*
		 * RT2525E does not need RX I/Q Flip.
		 */
		if (FUNC3(rt2x00dev, RF2525E))
			FUNC5(&r14, BBP_R14_RX_IQ_FLIP, 0);
	} else {
		FUNC4(&reg, BBPCSR1_CCK_FLIP, 0);
		FUNC4(&reg, BBPCSR1_OFDM_FLIP, 0);
	}

	FUNC7(rt2x00dev, BBPCSR1, reg);
	FUNC2(rt2x00dev, 14, r14);
	FUNC2(rt2x00dev, 2, r2);
}