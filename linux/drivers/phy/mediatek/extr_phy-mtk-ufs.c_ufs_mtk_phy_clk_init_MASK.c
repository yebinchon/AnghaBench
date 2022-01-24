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
struct ufs_mtk_phy {void* mp_clk; void* unipro_clk; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 

__attribute__((used)) static int FUNC4(struct ufs_mtk_phy *phy)
{
	struct device *dev = phy->dev;

	phy->unipro_clk = FUNC3(dev, "unipro");
	if (FUNC0(phy->unipro_clk)) {
		FUNC2(dev, "failed to get clock: unipro");
		return FUNC1(phy->unipro_clk);
	}

	phy->mp_clk = FUNC3(dev, "mp");
	if (FUNC0(phy->mp_clk)) {
		FUNC2(dev, "failed to get clock: mp");
		return FUNC1(phy->mp_clk);
	}

	return 0;
}