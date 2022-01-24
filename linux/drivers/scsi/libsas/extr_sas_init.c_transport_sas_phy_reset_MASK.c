#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sas_rphy {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct sas_phy {size_t number; TYPE_4__ dev; } ;
struct sas_internal {TYPE_3__* dft; } ;
struct TYPE_6__ {TYPE_1__* shost; } ;
struct sas_ha_struct {TYPE_2__ core; struct asd_sas_phy** sas_phy; } ;
struct domain_device {int dummy; } ;
struct asd_sas_phy {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  enum phy_func { ____Placeholder_phy_func } phy_func ;
struct TYPE_7__ {int (* lldd_control_phy ) (struct asd_sas_phy*,int,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  transportt; } ;

/* Variables and functions */
 int PHY_FUNC_HARD_RESET ; 
 int PHY_FUNC_LINK_RESET ; 
 struct sas_ha_struct* FUNC0 (struct Scsi_Host*) ; 
 struct sas_rphy* FUNC1 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct domain_device*) ; 
 struct domain_device* FUNC5 (struct domain_device*,size_t) ; 
 struct domain_device* FUNC6 (struct sas_rphy*) ; 
 int FUNC7 (struct domain_device*,size_t,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct asd_sas_phy*) ; 
 scalar_t__ FUNC9 (struct sas_phy*) ; 
 int FUNC10 (struct asd_sas_phy*,int,int /*<<< orphan*/ *) ; 
 struct sas_internal* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sas_phy *phy, int hard_reset)
{
	enum phy_func reset_type;

	if (hard_reset)
		reset_type = PHY_FUNC_HARD_RESET;
	else
		reset_type = PHY_FUNC_LINK_RESET;

	if (FUNC9(phy)) {
		struct Scsi_Host *shost = FUNC2(phy->dev.parent);
		struct sas_ha_struct *sas_ha = FUNC0(shost);
		struct asd_sas_phy *asd_phy = sas_ha->sas_phy[phy->number];
		struct sas_internal *i =
			FUNC11(sas_ha->core.shost->transportt);

		if (!hard_reset && FUNC8(asd_phy) == 0)
			return 0;
		return i->dft->lldd_control_phy(asd_phy, reset_type, NULL);
	} else {
		struct sas_rphy *rphy = FUNC1(phy->dev.parent);
		struct domain_device *ddev = FUNC6(rphy);
		struct domain_device *ata_dev = FUNC5(ddev, phy->number);

		if (ata_dev && !hard_reset) {
			FUNC3(ata_dev);
			FUNC4(ata_dev);
			return 0;
		} else
			return FUNC7(ddev, phy->number, reset_type, NULL);
	}
}