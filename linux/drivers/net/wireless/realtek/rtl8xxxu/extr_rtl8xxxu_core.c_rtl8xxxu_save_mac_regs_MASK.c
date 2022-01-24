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
typedef  int /*<<< orphan*/  u32 ;
struct rtl8xxxu_priv {int dummy; } ;

/* Variables and functions */
 int RTL8XXXU_MAC_REGS ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8xxxu_priv*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/  const) ; 

void
FUNC2(struct rtl8xxxu_priv *priv, const u32 *reg, u32 *backup)
{
	int i;

	for (i = 0; i < (RTL8XXXU_MAC_REGS - 1); i++)
		backup[i] = FUNC1(priv, reg[i]);

	backup[i] = FUNC0(priv, reg[i]);
}