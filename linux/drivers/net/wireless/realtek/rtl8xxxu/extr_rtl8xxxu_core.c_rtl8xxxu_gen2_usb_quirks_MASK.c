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
 int /*<<< orphan*/  REG_TXDMA_OFFSET_CHK ; 
 int /*<<< orphan*/  TXDMA_OFFSET_DROP_DATA_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct rtl8xxxu_priv *priv)
{
	u32 val32;

	val32 = FUNC0(priv, REG_TXDMA_OFFSET_CHK);
	val32 |= TXDMA_OFFSET_DROP_DATA_EN;
	FUNC1(priv, REG_TXDMA_OFFSET_CHK, val32);
}