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
struct tegra_p2u {int dummy; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2U_PERIODIC_EQ_CTRL_GEN3 ; 
 int /*<<< orphan*/  P2U_PERIODIC_EQ_CTRL_GEN3_INIT_PRESET_EQ_TRAIN_EN ; 
 int /*<<< orphan*/  P2U_PERIODIC_EQ_CTRL_GEN3_PERIODIC_EQ_EN ; 
 int /*<<< orphan*/  P2U_PERIODIC_EQ_CTRL_GEN4 ; 
 int /*<<< orphan*/  P2U_PERIODIC_EQ_CTRL_GEN4_INIT_PRESET_EQ_TRAIN_EN ; 
 int /*<<< orphan*/  P2U_RX_DEBOUNCE_TIME ; 
 int /*<<< orphan*/  P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_MASK ; 
 int /*<<< orphan*/  P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_p2u*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_p2u*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_p2u* FUNC2 (struct phy*) ; 

__attribute__((used)) static int FUNC3(struct phy *x)
{
	struct tegra_p2u *phy = FUNC2(x);
	u32 val;

	val = FUNC0(phy, P2U_PERIODIC_EQ_CTRL_GEN3);
	val &= ~P2U_PERIODIC_EQ_CTRL_GEN3_PERIODIC_EQ_EN;
	val |= P2U_PERIODIC_EQ_CTRL_GEN3_INIT_PRESET_EQ_TRAIN_EN;
	FUNC1(phy, val, P2U_PERIODIC_EQ_CTRL_GEN3);

	val = FUNC0(phy, P2U_PERIODIC_EQ_CTRL_GEN4);
	val |= P2U_PERIODIC_EQ_CTRL_GEN4_INIT_PRESET_EQ_TRAIN_EN;
	FUNC1(phy, val, P2U_PERIODIC_EQ_CTRL_GEN4);

	val = FUNC0(phy, P2U_RX_DEBOUNCE_TIME);
	val &= ~P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_MASK;
	val |= P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_VAL;
	FUNC1(phy, val, P2U_RX_DEBOUNCE_TIME);

	return 0;
}