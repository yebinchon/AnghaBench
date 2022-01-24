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
struct stm32_usbphyc_phy {int /*<<< orphan*/  supplies; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUM_SUPPLIES ; 
 struct stm32_usbphyc_phy* FUNC0 (struct phy*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct stm32_usbphyc_phy *usbphyc_phy = FUNC0(phy);

	return FUNC1(NUM_SUPPLIES, usbphyc_phy->supplies);
}