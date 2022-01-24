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
struct ufs_qcom_phy {int is_ref_clk_enabled; scalar_t__ ref_clk_src; scalar_t__ ref_clk_parent; scalar_t__ ref_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct ufs_qcom_phy *phy)
{
	if (phy->is_ref_clk_enabled) {
		FUNC0(phy->ref_clk);
		/*
		 * "ref_clk_parent" is optional clock hence make sure that clk
		 * reference is available before trying to disable the clock.
		 */
		if (phy->ref_clk_parent)
			FUNC0(phy->ref_clk_parent);
		FUNC0(phy->ref_clk_src);
		phy->is_ref_clk_enabled = false;
	}
}