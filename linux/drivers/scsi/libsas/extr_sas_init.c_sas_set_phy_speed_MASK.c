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
struct sas_phy_linkrates {scalar_t__ minimum_linkrate; scalar_t__ maximum_linkrate; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct sas_phy {scalar_t__ maximum_linkrate; scalar_t__ minimum_linkrate; scalar_t__ minimum_linkrate_hw; scalar_t__ maximum_linkrate_hw; size_t number; TYPE_4__ dev; } ;
struct sas_internal {TYPE_3__* dft; } ;
struct TYPE_6__ {TYPE_1__* shost; } ;
struct sas_ha_struct {TYPE_2__ core; struct asd_sas_phy** sas_phy; } ;
struct domain_device {int dummy; } ;
struct asd_sas_phy {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_7__ {int (* lldd_control_phy ) (struct asd_sas_phy*,int /*<<< orphan*/ ,struct sas_phy_linkrates*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  transportt; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PHY_FUNC_LINK_RESET ; 
 int /*<<< orphan*/  PHY_FUNC_SET_LINK_RATE ; 
 struct sas_ha_struct* FUNC0 (struct Scsi_Host*) ; 
 struct sas_rphy* FUNC1 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (int /*<<< orphan*/ ) ; 
 struct domain_device* FUNC3 (struct sas_rphy*) ; 
 int FUNC4 (struct domain_device*,size_t,int /*<<< orphan*/ ,struct sas_phy_linkrates*) ; 
 scalar_t__ FUNC5 (struct sas_phy*) ; 
 int FUNC6 (struct asd_sas_phy*,int /*<<< orphan*/ ,struct sas_phy_linkrates*) ; 
 struct sas_internal* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct sas_phy *phy,
		      struct sas_phy_linkrates *rates)
{
	int ret;

	if ((rates->minimum_linkrate &&
	     rates->minimum_linkrate > phy->maximum_linkrate) ||
	    (rates->maximum_linkrate &&
	     rates->maximum_linkrate < phy->minimum_linkrate))
		return -EINVAL;

	if (rates->minimum_linkrate &&
	    rates->minimum_linkrate < phy->minimum_linkrate_hw)
		rates->minimum_linkrate = phy->minimum_linkrate_hw;

	if (rates->maximum_linkrate &&
	    rates->maximum_linkrate > phy->maximum_linkrate_hw)
		rates->maximum_linkrate = phy->maximum_linkrate_hw;

	if (FUNC5(phy)) {
		struct Scsi_Host *shost = FUNC2(phy->dev.parent);
		struct sas_ha_struct *sas_ha = FUNC0(shost);
		struct asd_sas_phy *asd_phy = sas_ha->sas_phy[phy->number];
		struct sas_internal *i =
			FUNC7(sas_ha->core.shost->transportt);

		ret = i->dft->lldd_control_phy(asd_phy, PHY_FUNC_SET_LINK_RATE,
					       rates);
	} else {
		struct sas_rphy *rphy = FUNC1(phy->dev.parent);
		struct domain_device *ddev = FUNC3(rphy);
		ret = FUNC4(ddev, phy->number,
					  PHY_FUNC_LINK_RESET, rates);

	}

	return ret;
}