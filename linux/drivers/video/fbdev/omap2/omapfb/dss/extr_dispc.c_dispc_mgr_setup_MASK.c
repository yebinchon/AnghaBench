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
struct omap_overlay_manager_info {int /*<<< orphan*/  cpr_coefs; int /*<<< orphan*/  cpr_enable; int /*<<< orphan*/  partial_alpha_enabled; int /*<<< orphan*/  trans_enabled; int /*<<< orphan*/  trans_key; int /*<<< orphan*/  trans_key_type; int /*<<< orphan*/  default_color; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FEAT_CPR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(enum omap_channel channel,
		const struct omap_overlay_manager_info *info)
{
	FUNC4(channel, info->default_color);
	FUNC5(channel, info->trans_key_type, info->trans_key);
	FUNC2(channel, info->trans_enabled);
	FUNC0(channel,
			info->partial_alpha_enabled);
	if (FUNC6(FEAT_CPR)) {
		FUNC1(channel, info->cpr_enable);
		FUNC3(channel, &info->cpr_coefs);
	}
}