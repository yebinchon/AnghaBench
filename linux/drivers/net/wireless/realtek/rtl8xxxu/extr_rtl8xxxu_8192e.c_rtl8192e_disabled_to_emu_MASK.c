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
struct rtl8xxxu_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ REG_APS_FSMCO ; 
 int FUNC1 (struct rtl8xxxu_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8xxxu_priv*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct rtl8xxxu_priv *priv)
{
	u8 val8;

	/* Clear suspend enable and power down enable*/
	val8 = FUNC1(priv, REG_APS_FSMCO + 1);
	val8 &= ~(FUNC0(3) | FUNC0(4));
	FUNC2(priv, REG_APS_FSMCO + 1, val8);
}