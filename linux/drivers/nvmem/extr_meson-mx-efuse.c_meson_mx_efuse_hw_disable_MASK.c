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
struct meson_mx_efuse {int /*<<< orphan*/  core_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  MESON_MX_EFUSE_CNTL1 ; 
 int /*<<< orphan*/  MESON_MX_EFUSE_CNTL1_PD_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct meson_mx_efuse*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct meson_mx_efuse *efuse)
{
	FUNC1(efuse, MESON_MX_EFUSE_CNTL1,
				 MESON_MX_EFUSE_CNTL1_PD_ENABLE,
				 MESON_MX_EFUSE_CNTL1_PD_ENABLE);

	FUNC0(efuse->core_clk);
}