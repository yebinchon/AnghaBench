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
struct rockchip_typec_phy {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct rockchip_typec_phy *tcphy, u32 lane)
{
	FUNC6(0x7799, tcphy->base + FUNC0(lane));
	FUNC6(0x7798, tcphy->base + FUNC1(lane));
	FUNC6(0x5098, tcphy->base + FUNC2(lane));
	FUNC6(0x5098, tcphy->base + FUNC3(lane));
	FUNC6(0, tcphy->base + FUNC4(lane));
	FUNC6(0xbf, tcphy->base + FUNC5(lane));
}