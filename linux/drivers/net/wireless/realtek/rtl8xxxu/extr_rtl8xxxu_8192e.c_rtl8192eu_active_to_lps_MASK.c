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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct rtl8xxxu_priv {TYPE_1__* udev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int CR_HCI_RXDMA_ENABLE ; 
 int CR_HCI_TXDMA_ENABLE ; 
 int CR_SECURITY_ENABLE ; 
 int DUAL_TSF_TX_OK ; 
 int EBUSY ; 
 int /*<<< orphan*/  REG_CR ; 
 int /*<<< orphan*/  REG_DUAL_TSF_RST ; 
 int /*<<< orphan*/  REG_SCH_TX_CMD ; 
 int /*<<< orphan*/  REG_SYS_FUNC ; 
 int /*<<< orphan*/  REG_TXPAUSE ; 
 int SYS_FUNC_BBRSTB ; 
 int SYS_FUNC_BB_GLB_RSTN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct rtl8xxxu_priv *priv)
{
	struct device *dev = &priv->udev->dev;
	u8 val8;
	u16 val16;
	u32 val32;
	int retry, retval;

	FUNC5(priv, REG_TXPAUSE, 0xff);

	retry = 100;
	retval = -EBUSY;
	/*
	 * Poll 32 bit wide 0x05f8 for 0x00000000 to ensure no TX is pending.
	 */
	do {
		val32 = FUNC2(priv, REG_SCH_TX_CMD);
		if (!val32) {
			retval = 0;
			break;
		}
	} while (retry--);

	if (!retry) {
		FUNC0(dev, "Failed to flush TX queue\n");
		retval = -EBUSY;
		goto out;
	}

	/* Disable CCK and OFDM, clock gated */
	val8 = FUNC3(priv, REG_SYS_FUNC);
	val8 &= ~SYS_FUNC_BBRSTB;
	FUNC5(priv, REG_SYS_FUNC, val8);

	FUNC6(2);

	/* Reset whole BB */
	val8 = FUNC3(priv, REG_SYS_FUNC);
	val8 &= ~SYS_FUNC_BB_GLB_RSTN;
	FUNC5(priv, REG_SYS_FUNC, val8);

	/* Reset MAC TRX */
	val16 = FUNC1(priv, REG_CR);
	val16 &= 0xff00;
	val16 |= (CR_HCI_TXDMA_ENABLE | CR_HCI_RXDMA_ENABLE);
	FUNC4(priv, REG_CR, val16);

	val16 = FUNC1(priv, REG_CR);
	val16 &= ~CR_SECURITY_ENABLE;
	FUNC4(priv, REG_CR, val16);

	val8 = FUNC3(priv, REG_DUAL_TSF_RST);
	val8 |= DUAL_TSF_TX_OK;
	FUNC5(priv, REG_DUAL_TSF_RST, val8);

out:
	return retval;
}