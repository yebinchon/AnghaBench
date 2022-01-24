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
typedef  int u16 ;
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
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC22(struct rockchip_typec_phy *tcphy, u32 lane)
{
	u16 rdata;

	FUNC21(0xbefc, tcphy->base + FUNC19(lane));
	FUNC21(0x6799, tcphy->base + FUNC1(lane));
	FUNC21(0x6798, tcphy->base + FUNC2(lane));
	FUNC21(0x98, tcphy->base + FUNC3(lane));
	FUNC21(0x98, tcphy->base + FUNC4(lane));

	FUNC21(0, tcphy->base + FUNC10(lane));
	FUNC21(0, tcphy->base + FUNC11(lane));
	FUNC21(0, tcphy->base + FUNC12(lane));
	FUNC21(0, tcphy->base + FUNC13(lane));
	FUNC21(0, tcphy->base + FUNC14(lane));
	FUNC21(0, tcphy->base + FUNC15(lane));
	FUNC21(0, tcphy->base + FUNC16(lane));
	FUNC21(0, tcphy->base + FUNC17(lane));
	FUNC21(0, tcphy->base + FUNC8(lane));
	FUNC21(0, tcphy->base + FUNC7(lane));
	FUNC21(0, tcphy->base + FUNC6(lane));
	FUNC21(0, tcphy->base + FUNC9(lane));

	FUNC21(0x128, tcphy->base + FUNC5(lane));
	FUNC21(0x400, tcphy->base + FUNC0(lane));

	rdata = FUNC20(tcphy->base + FUNC18(lane));
	rdata = (rdata & 0x8fff) | 0x6000;
	FUNC21(rdata, tcphy->base + FUNC18(lane));
}