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
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct sas_phy {size_t number; TYPE_2__ dev; } ;
struct sas_internal {TYPE_1__* dft; } ;
struct TYPE_8__ {TYPE_3__* shost; } ;
struct sas_ha_struct {TYPE_4__ core; struct asd_sas_phy** sas_phy; } ;
struct asd_sas_phy {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  transportt; } ;
struct TYPE_5__ {int (* lldd_control_phy ) (struct asd_sas_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_FUNC_GET_EVENTS ; 
 struct sas_ha_struct* FUNC0 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sas_phy*) ; 
 scalar_t__ FUNC3 (struct sas_phy*) ; 
 int FUNC4 (struct asd_sas_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sas_internal* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sas_phy *phy)
{
	if (FUNC3(phy)) {
		struct Scsi_Host *shost = FUNC1(phy->dev.parent);
		struct sas_ha_struct *sas_ha = FUNC0(shost);
		struct asd_sas_phy *asd_phy = sas_ha->sas_phy[phy->number];
		struct sas_internal *i =
			FUNC5(sas_ha->core.shost->transportt);

		return i->dft->lldd_control_phy(asd_phy, PHY_FUNC_GET_EVENTS, NULL);
	}

	return FUNC2(phy);
}