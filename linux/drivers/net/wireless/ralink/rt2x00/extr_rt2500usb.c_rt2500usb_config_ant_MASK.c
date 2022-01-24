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
typedef  int /*<<< orphan*/  u16 ;
struct rt2x00_dev {int dummy; } ;
struct antenna_setup {int rx; int tx; } ;

/* Variables and functions */
#define  ANTENNA_A 130 
#define  ANTENNA_B 129 
#define  ANTENNA_HW_DIVERSITY 128 
 int ANTENNA_SW_DIVERSITY ; 
 int /*<<< orphan*/  BBP_R14_RX_ANTENNA ; 
 int /*<<< orphan*/  BBP_R14_RX_IQ_FLIP ; 
 int /*<<< orphan*/  BBP_R2_TX_ANTENNA ; 
 int /*<<< orphan*/  BBP_R2_TX_IQ_FLIP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PHY_CSR5 ; 
 int /*<<< orphan*/  PHY_CSR5_CCK ; 
 int /*<<< orphan*/  PHY_CSR5_CCK_FLIP ; 
 int /*<<< orphan*/  PHY_CSR6 ; 
 int /*<<< orphan*/  PHY_CSR6_OFDM ; 
 int /*<<< orphan*/  PHY_CSR6_OFDM_FLIP ; 
 int /*<<< orphan*/  RF2525E ; 
 int /*<<< orphan*/  RF5222 ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct rt2x00_dev *rt2x00dev,
				 struct antenna_setup *ant)
{
	u8 r2;
	u8 r14;
	u16 csr5;
	u16 csr6;

	/*
	 * We should never come here because rt2x00lib is supposed
	 * to catch this and send us the correct antenna explicitely.
	 */
	FUNC0(ant->rx == ANTENNA_SW_DIVERSITY ||
	       ant->tx == ANTENNA_SW_DIVERSITY);

	r2 = FUNC1(rt2x00dev, 2);
	r14 = FUNC1(rt2x00dev, 14);
	csr5 = FUNC3(rt2x00dev, PHY_CSR5);
	csr6 = FUNC3(rt2x00dev, PHY_CSR6);

	/*
	 * Configure the TX antenna.
	 */
	switch (ant->tx) {
	case ANTENNA_HW_DIVERSITY:
		FUNC7(&r2, BBP_R2_TX_ANTENNA, 1);
		FUNC6(&csr5, PHY_CSR5_CCK, 1);
		FUNC6(&csr6, PHY_CSR6_OFDM, 1);
		break;
	case ANTENNA_A:
		FUNC7(&r2, BBP_R2_TX_ANTENNA, 0);
		FUNC6(&csr5, PHY_CSR5_CCK, 0);
		FUNC6(&csr6, PHY_CSR6_OFDM, 0);
		break;
	case ANTENNA_B:
	default:
		FUNC7(&r2, BBP_R2_TX_ANTENNA, 2);
		FUNC6(&csr5, PHY_CSR5_CCK, 2);
		FUNC6(&csr6, PHY_CSR6_OFDM, 2);
		break;
	}

	/*
	 * Configure the RX antenna.
	 */
	switch (ant->rx) {
	case ANTENNA_HW_DIVERSITY:
		FUNC7(&r14, BBP_R14_RX_ANTENNA, 1);
		break;
	case ANTENNA_A:
		FUNC7(&r14, BBP_R14_RX_ANTENNA, 0);
		break;
	case ANTENNA_B:
	default:
		FUNC7(&r14, BBP_R14_RX_ANTENNA, 2);
		break;
	}

	/*
	 * RT2525E and RT5222 need to flip TX I/Q
	 */
	if (FUNC5(rt2x00dev, RF2525E) || FUNC5(rt2x00dev, RF5222)) {
		FUNC7(&r2, BBP_R2_TX_IQ_FLIP, 1);
		FUNC6(&csr5, PHY_CSR5_CCK_FLIP, 1);
		FUNC6(&csr6, PHY_CSR6_OFDM_FLIP, 1);

		/*
		 * RT2525E does not need RX I/Q Flip.
		 */
		if (FUNC5(rt2x00dev, RF2525E))
			FUNC7(&r14, BBP_R14_RX_IQ_FLIP, 0);
	} else {
		FUNC6(&csr5, PHY_CSR5_CCK_FLIP, 0);
		FUNC6(&csr6, PHY_CSR6_OFDM_FLIP, 0);
	}

	FUNC2(rt2x00dev, 2, r2);
	FUNC2(rt2x00dev, 14, r14);
	FUNC4(rt2x00dev, PHY_CSR5, csr5);
	FUNC4(rt2x00dev, PHY_CSR6, csr6);
}