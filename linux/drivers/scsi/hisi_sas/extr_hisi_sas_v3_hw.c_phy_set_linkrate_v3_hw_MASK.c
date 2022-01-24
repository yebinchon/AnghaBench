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
typedef  int u32 ;
struct sas_phy_linkrates {int maximum_linkrate; } ;
struct hisi_hba {int dummy; } ;
typedef  enum sas_linkrate { ____Placeholder_sas_linkrate } sas_linkrate ;

/* Variables and functions */
 int /*<<< orphan*/  PROG_PHY_LINK_RATE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hisi_hba *hisi_hba, int phy_no,
		struct sas_phy_linkrates *r)
{
	enum sas_linkrate max = r->maximum_linkrate;
	u32 prog_phy_link_rate = 0x800;

	prog_phy_link_rate |= FUNC0(max);
	FUNC1(hisi_hba, phy_no, PROG_PHY_LINK_RATE,
			     prog_phy_link_rate);
}