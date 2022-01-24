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
typedef  int /*<<< orphan*/  u8 ;
struct cdns_dphy {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ DPHY_PSM_CFG ; 
 int DPHY_PSM_CFG_FROM_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct cdns_dphy *dphy, u8 div)
{
	FUNC1(DPHY_PSM_CFG_FROM_REG | FUNC0(div),
	       dphy->regs + DPHY_PSM_CFG);
}