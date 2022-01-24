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
struct rtl8xxxu_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_RX_WAIT_CCA ; 
 int FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct rtl8xxxu_priv *priv)
{
	u32 val32;

	val32 = FUNC1(priv, REG_RX_WAIT_CCA);
	val32 &= ~(FUNC0(22) | FUNC0(23));
	FUNC2(priv, REG_RX_WAIT_CCA, val32);
}