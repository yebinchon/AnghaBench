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
typedef  scalar_t__ u32 ;
struct tegra_xusb {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  XUSB_CFG_ARU_C11_CSBRANGE ; 
 scalar_t__ XUSB_CFG_CSB_BASE_ADDR ; 
 scalar_t__ FUNC2 (struct tegra_xusb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_xusb*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(struct tegra_xusb *tegra, unsigned int offset)
{
	u32 page = FUNC1(offset);
	u32 ofs = FUNC0(offset);

	FUNC3(tegra, page, XUSB_CFG_ARU_C11_CSBRANGE);

	return FUNC2(tegra, XUSB_CFG_CSB_BASE_ADDR + ofs);
}