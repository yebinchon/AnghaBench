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
typedef  int u32 ;
typedef  int u16 ;
struct rtl8xxxu_priv {int dummy; } ;

/* Variables and functions */
 int CR_CALTIMER_ENABLE ; 
 int CR_HCI_RXDMA_ENABLE ; 
 int CR_HCI_TXDMA_ENABLE ; 
 int CR_MAC_RX_ENABLE ; 
 int CR_MAC_TX_ENABLE ; 
 int CR_PROTOCOL_ENABLE ; 
 int CR_RXDMA_ENABLE ; 
 int CR_SCHEDULE_ENABLE ; 
 int CR_SECURITY_ENABLE ; 
 int CR_TXDMA_ENABLE ; 
 int /*<<< orphan*/  REG_8192E_LDOV12_CTRL ; 
 int /*<<< orphan*/  REG_CR ; 
 int /*<<< orphan*/  REG_LDO_SW_CTRL ; 
 int /*<<< orphan*/  REG_SYS_CFG ; 
 int SYS_CFG_SPS_LDO_SEL ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8xxxu_priv*) ; 
 int FUNC2 (struct rtl8xxxu_priv*) ; 
 int FUNC3 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct rtl8xxxu_priv *priv)
{
	u16 val16;
	u32 val32;
	int ret;

	ret = 0;

	val32 = FUNC4(priv, REG_SYS_CFG);
	if (val32 & SYS_CFG_SPS_LDO_SEL) {
		FUNC7(priv, REG_LDO_SW_CTRL, 0xc3);
	} else {
		/*
		 * Raise 1.2V voltage
		 */
		val32 = FUNC4(priv, REG_8192E_LDOV12_CTRL);
		val32 &= 0xff0fffff;
		val32 |= 0x00500000;
		FUNC6(priv, REG_8192E_LDOV12_CTRL, val32);
		FUNC7(priv, REG_LDO_SW_CTRL, 0x83);
	}

	/*
	 * Adjust AFE before enabling PLL
	 */
	FUNC0(priv);
	FUNC1(priv);

	ret = FUNC2(priv);
	if (ret)
		goto exit;

	FUNC5(priv, REG_CR, 0x0000);

	/*
	 * Enable MAC DMA/WMAC/SCHEDULE/SEC block
	 * Set CR bit10 to enable 32k calibration.
	 */
	val16 = FUNC3(priv, REG_CR);
	val16 |= (CR_HCI_TXDMA_ENABLE | CR_HCI_RXDMA_ENABLE |
		  CR_TXDMA_ENABLE | CR_RXDMA_ENABLE |
		  CR_PROTOCOL_ENABLE | CR_SCHEDULE_ENABLE |
		  CR_MAC_TX_ENABLE | CR_MAC_RX_ENABLE |
		  CR_SECURITY_ENABLE | CR_CALTIMER_ENABLE);
	FUNC5(priv, REG_CR, val16);

exit:
	return ret;
}