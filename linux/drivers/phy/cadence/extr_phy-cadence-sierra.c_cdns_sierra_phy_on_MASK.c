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
struct phy {int dummy; } ;
struct cdns_sierra_inst {int /*<<< orphan*/  lnk_rst; } ;

/* Variables and functions */
 struct cdns_sierra_inst* FUNC0 (struct phy*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy *gphy)
{
	struct cdns_sierra_inst *ins = FUNC0(gphy);

	/* Take the PHY lane group out of reset */
	return FUNC1(ins->lnk_rst);
}