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
struct ufs_mtk_phy {int /*<<< orphan*/  unipro_clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  mp_clk; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct ufs_mtk_phy* FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_mtk_phy*) ; 

__attribute__((used)) static int FUNC5(struct phy *generic_phy)
{
	struct ufs_mtk_phy *phy = FUNC3(generic_phy);
	int ret;

	ret = FUNC1(phy->unipro_clk);
	if (ret) {
		FUNC2(phy->dev, "unipro_clk enable failed %d\n", ret);
		goto out;
	}

	ret = FUNC1(phy->mp_clk);
	if (ret) {
		FUNC2(phy->dev, "mp_clk enable failed %d\n", ret);
		goto out_unprepare_unipro_clk;
	}

	FUNC4(phy);

	return 0;

out_unprepare_unipro_clk:
	FUNC0(phy->unipro_clk);
out:
	return ret;
}