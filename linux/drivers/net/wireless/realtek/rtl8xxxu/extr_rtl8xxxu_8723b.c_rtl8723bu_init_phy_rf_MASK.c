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
struct rtl8xxxu_priv {int dummy; } ;

/* Variables and functions */
 int RF6052_REG_MODE_AG ; 
 int /*<<< orphan*/  RF_A ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  rtl8723bu_radioa_1t_init_table ; 
 int FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct rtl8xxxu_priv *priv)
{
	int ret;

	ret = FUNC1(priv, rtl8723bu_radioa_1t_init_table, RF_A);
	/*
	 * PHY LCK
	 */
	FUNC2(priv, RF_A, 0xb0, 0xdfbe0);
	FUNC2(priv, RF_A, RF6052_REG_MODE_AG, 0x8c01);
	FUNC0(200);
	FUNC2(priv, RF_A, 0xb0, 0xdffe0);

	return ret;
}