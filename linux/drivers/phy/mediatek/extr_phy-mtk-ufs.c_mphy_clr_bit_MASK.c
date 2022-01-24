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
struct ufs_mtk_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ufs_mtk_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_mtk_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ufs_mtk_phy *phy, u32 reg, u32 bit)
{
	u32 val;

	val = FUNC0(phy, reg);
	val &= ~bit;
	FUNC1(phy, val, reg);
}