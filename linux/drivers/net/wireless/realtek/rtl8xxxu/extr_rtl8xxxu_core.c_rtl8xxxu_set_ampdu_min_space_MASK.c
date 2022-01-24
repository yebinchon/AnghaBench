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
 int /*<<< orphan*/  REG_AMPDU_MIN_SPACE ; 
 int FUNC0 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct rtl8xxxu_priv *priv, u8 density)
{
	u8 val8;

	val8 = FUNC0(priv, REG_AMPDU_MIN_SPACE);
	val8 &= 0xf8;
	val8 |= density;
	FUNC1(priv, REG_AMPDU_MIN_SPACE, val8);
}