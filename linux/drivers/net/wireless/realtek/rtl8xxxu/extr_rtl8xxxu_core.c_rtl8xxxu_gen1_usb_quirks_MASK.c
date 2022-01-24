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
struct rtl8xxxu_priv {scalar_t__ vendor_umc; int /*<<< orphan*/  chip_cut; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_TXDMA_OFFSET_CHK ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8xxxu_priv*,int,int) ; 

void FUNC2(struct rtl8xxxu_priv *priv)
{
	/* Fix USB interface interference issue */
	FUNC1(priv, 0xfe40, 0xe0);
	FUNC1(priv, 0xfe41, 0x8d);
	FUNC1(priv, 0xfe42, 0x80);
	/*
	 * This sets TXDMA_OFFSET_DROP_DATA_EN (bit 9) as well as bits
	 * 8 and 5, for which I have found no documentation.
	 */
	FUNC0(priv, REG_TXDMA_OFFSET_CHK, 0xfd0320);

	/*
	 * Solve too many protocol error on USB bus.
	 * Can't do this for 8188/8192 UMC A cut parts
	 */
	if (!(!priv->chip_cut && priv->vendor_umc)) {
		FUNC1(priv, 0xfe40, 0xe6);
		FUNC1(priv, 0xfe41, 0x94);
		FUNC1(priv, 0xfe42, 0x80);

		FUNC1(priv, 0xfe40, 0xe0);
		FUNC1(priv, 0xfe41, 0x19);
		FUNC1(priv, 0xfe42, 0x80);

		FUNC1(priv, 0xfe40, 0xe5);
		FUNC1(priv, 0xfe41, 0x91);
		FUNC1(priv, 0xfe42, 0x80);

		FUNC1(priv, 0xfe40, 0xe2);
		FUNC1(priv, 0xfe41, 0x81);
		FUNC1(priv, 0xfe42, 0x80);
	}
}