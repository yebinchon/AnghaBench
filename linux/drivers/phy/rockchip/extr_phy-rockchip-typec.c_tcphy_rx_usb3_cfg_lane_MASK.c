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
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct rockchip_typec_phy *tcphy, u32 lane)
{
	FUNC10(0xa6fd, tcphy->base + FUNC1(lane));
	FUNC10(0xa6fd, tcphy->base + FUNC2(lane));
	FUNC10(0xa410, tcphy->base + FUNC3(lane));
	FUNC10(0x2410, tcphy->base + FUNC4(lane));
	FUNC10(0x23ff, tcphy->base + FUNC5(lane));
	FUNC10(0x13, tcphy->base + FUNC8(lane));
	FUNC10(0x03e7, tcphy->base + FUNC7(lane));
	FUNC10(0x1004, tcphy->base + FUNC0(lane));
	FUNC10(0x2010, tcphy->base + FUNC6(lane));
	FUNC10(0xfb, tcphy->base + FUNC9(lane));
}