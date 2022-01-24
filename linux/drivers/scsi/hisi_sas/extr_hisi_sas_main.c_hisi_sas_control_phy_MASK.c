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
struct sas_ha_struct {struct hisi_hba* lldd_ha; } ;
struct hisi_hba {TYPE_1__* hw; } ;
struct asd_sas_phy {int id; struct sas_ha_struct* ha; } ;
typedef  enum phy_func { ____Placeholder_phy_func } phy_func ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_events ) (struct hisi_hba*,int) ;int /*<<< orphan*/  (* phy_hard_reset ) (struct hisi_hba*,int) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  PHY_FUNC_DISABLE 133 
#define  PHY_FUNC_GET_EVENTS 132 
#define  PHY_FUNC_HARD_RESET 131 
#define  PHY_FUNC_LINK_RESET 130 
#define  PHY_FUNC_RELEASE_SPINUP_HOLD 129 
#define  PHY_FUNC_SET_LINK_RATE 128 
 int /*<<< orphan*/  FUNC0 (struct hisi_hba*,int,int) ; 
 int FUNC1 (struct hisi_hba*,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_hba*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_hba*,int) ; 

__attribute__((used)) static int FUNC5(struct asd_sas_phy *sas_phy, enum phy_func func,
				void *funcdata)
{
	struct sas_ha_struct *sas_ha = sas_phy->ha;
	struct hisi_hba *hisi_hba = sas_ha->lldd_ha;
	int phy_no = sas_phy->id;

	switch (func) {
	case PHY_FUNC_HARD_RESET:
		hisi_hba->hw->phy_hard_reset(hisi_hba, phy_no);
		break;

	case PHY_FUNC_LINK_RESET:
		FUNC0(hisi_hba, phy_no, 0);
		FUNC2(100);
		FUNC0(hisi_hba, phy_no, 1);
		break;

	case PHY_FUNC_DISABLE:
		FUNC0(hisi_hba, phy_no, 0);
		break;

	case PHY_FUNC_SET_LINK_RATE:
		return FUNC1(hisi_hba, phy_no, funcdata);
	case PHY_FUNC_GET_EVENTS:
		if (hisi_hba->hw->get_events) {
			hisi_hba->hw->get_events(hisi_hba, phy_no);
			break;
		}
		/* fallthru */
	case PHY_FUNC_RELEASE_SPINUP_HOLD:
	default:
		return -EOPNOTSUPP;
	}
	return 0;
}