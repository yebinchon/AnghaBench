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
struct ufs_mtk_phy {int /*<<< orphan*/  mp_clk; int /*<<< orphan*/  unipro_clk; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ufs_mtk_phy* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_mtk_phy*) ; 

__attribute__((used)) static int FUNC3(struct phy *generic_phy)
{
	struct ufs_mtk_phy *phy = FUNC1(generic_phy);

	FUNC2(phy);

	FUNC0(phy->unipro_clk);
	FUNC0(phy->mp_clk);

	return 0;
}