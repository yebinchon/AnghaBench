#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ device_type; } ;
struct hisi_sas_phy {TYPE_1__ identify; } ;
struct hisi_hba {struct hisi_sas_phy* phy; } ;

/* Variables and functions */
 scalar_t__ SAS_END_DEVICE ; 
 int /*<<< orphan*/  TXID_AUTO ; 
 int TX_HARDRST_MSK ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_hba*,int,int) ; 
 int FUNC1 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct hisi_hba *hisi_hba, int phy_no)
{
	struct hisi_sas_phy *phy = &hisi_hba->phy[phy_no];
	u32 txid_auto;

	FUNC0(hisi_hba, phy_no, 0);
	if (phy->identify.device_type == SAS_END_DEVICE) {
		txid_auto = FUNC1(hisi_hba, phy_no, TXID_AUTO);
		FUNC2(hisi_hba, phy_no, TXID_AUTO,
					txid_auto | TX_HARDRST_MSK);
	}
	FUNC3(100);
	FUNC0(hisi_hba, phy_no, 1);
}