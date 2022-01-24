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
typedef  int u8 ;
typedef  int u32 ;
struct rtl8xxxu_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_AFE_CTRL4 ; 
 int /*<<< orphan*/  REG_AFE_PLL_CTRL ; 
 int FUNC0 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rtl8xxxu_priv *priv)
{
	u8 val8;
	u32 val32;

	/*
	 * 40Mhz crystal source, MAC 0x28[2]=0
	 */
	val8 = FUNC1(priv, REG_AFE_PLL_CTRL);
	val8 &= 0xfb;
	FUNC3(priv, REG_AFE_PLL_CTRL, val8);

	val32 = FUNC0(priv, REG_AFE_CTRL4);
	val32 &= 0xfffffc7f;
	FUNC2(priv, REG_AFE_CTRL4, val32);

	/*
	 * 92e AFE parameter
	 * AFE PLL KVCO selection, MAC 0x28[6]=1
	 */
	val8 = FUNC1(priv, REG_AFE_PLL_CTRL);
	val8 &= 0xbf;
	FUNC3(priv, REG_AFE_PLL_CTRL, val8);

	/*
	 * AFE PLL KVCO selection, MAC 0x78[21]=0
	 */
	val32 = FUNC0(priv, REG_AFE_CTRL4);
	val32 &= 0xffdfffff;
	FUNC2(priv, REG_AFE_CTRL4, val32);
}