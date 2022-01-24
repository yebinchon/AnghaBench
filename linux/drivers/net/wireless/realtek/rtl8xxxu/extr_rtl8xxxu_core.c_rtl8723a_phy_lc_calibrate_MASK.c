#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rtl8xxxu_priv {int tx_paths; TYPE_1__* fops; } ;
struct TYPE_2__ {scalar_t__ has_s0s1; } ;

/* Variables and functions */
 int OFDM_LSTF_MASK ; 
 int /*<<< orphan*/  REG_OFDM1_LSTF ; 
 int /*<<< orphan*/  REG_TXPAUSE ; 
 int /*<<< orphan*/  RF6052_REG_AC ; 
 int /*<<< orphan*/  RF6052_REG_MODE_AG ; 
 int /*<<< orphan*/  RF6052_REG_S0S1 ; 
 int /*<<< orphan*/  RF_A ; 
 int /*<<< orphan*/  RF_B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct rtl8xxxu_priv *priv)
{
	u32 val32;
	u32 rf_amode, rf_bmode = 0, lstf;

	/* Check continuous TX and Packet TX */
	lstf = FUNC1(priv, REG_OFDM1_LSTF);

	if (lstf & OFDM_LSTF_MASK) {
		/* Disable all continuous TX */
		val32 = lstf & ~OFDM_LSTF_MASK;
		FUNC3(priv, REG_OFDM1_LSTF, val32);

		/* Read original RF mode Path A */
		rf_amode = FUNC2(priv, RF_A, RF6052_REG_AC);

		/* Set RF mode to standby Path A */
		FUNC5(priv, RF_A, RF6052_REG_AC,
				     (rf_amode & 0x8ffff) | 0x10000);

		/* Path-B */
		if (priv->tx_paths > 1) {
			rf_bmode = FUNC2(priv, RF_B,
						       RF6052_REG_AC);

			FUNC5(priv, RF_B, RF6052_REG_AC,
					     (rf_bmode & 0x8ffff) | 0x10000);
		}
	} else {
		/*  Deal with Packet TX case */
		/*  block all queues */
		FUNC4(priv, REG_TXPAUSE, 0xff);
	}

	/* Start LC calibration */
	if (priv->fops->has_s0s1)
		FUNC5(priv, RF_A, RF6052_REG_S0S1, 0xdfbe0);
	val32 = FUNC2(priv, RF_A, RF6052_REG_MODE_AG);
	val32 |= 0x08000;
	FUNC5(priv, RF_A, RF6052_REG_MODE_AG, val32);

	FUNC0(100);

	if (priv->fops->has_s0s1)
		FUNC5(priv, RF_A, RF6052_REG_S0S1, 0xdffe0);

	/* Restore original parameters */
	if (lstf & OFDM_LSTF_MASK) {
		/* Path-A */
		FUNC3(priv, REG_OFDM1_LSTF, lstf);
		FUNC5(priv, RF_A, RF6052_REG_AC, rf_amode);

		/* Path-B */
		if (priv->tx_paths > 1)
			FUNC5(priv, RF_B, RF6052_REG_AC,
					     rf_bmode);
	} else /*  Deal with Packet TX case */
		FUNC4(priv, REG_TXPAUSE, 0x00);
}