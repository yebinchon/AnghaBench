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
struct hisi_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_CFG ; 
 int /*<<< orphan*/  PHY_CFG_ENA_MSK ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hisi_hba *hisi_hba, int phy_no)
{
	u32 cfg = FUNC0(hisi_hba, phy_no, PHY_CFG);

	cfg |= PHY_CFG_ENA_MSK;
	FUNC1(hisi_hba, phy_no, PHY_CFG, cfg);
}