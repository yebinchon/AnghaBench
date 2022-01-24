#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct asd_phy {TYPE_2__* id_frm_tok; TYPE_1__* phy_desc; } ;
struct asd_ha_struct {struct asd_phy* phys; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma_handle; } ;
struct TYPE_3__ {int /*<<< orphan*/  phy_control_3; int /*<<< orphan*/  phy_control_2; int /*<<< orphan*/  phy_control_1; int /*<<< orphan*/  phy_control_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASD_COMINIT_TIMEOUT ; 
 int /*<<< orphan*/  HOTPLUG_DELAY_TIMEOUT ; 
 int /*<<< orphan*/  HOT_PLUG_DELAY ; 
 int /*<<< orphan*/  INT_ENABLE_2 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PHY_CONTROL_0 ; 
 int /*<<< orphan*/  PHY_CONTROL_1 ; 
 int /*<<< orphan*/  PHY_CONTROL_2 ; 
 int /*<<< orphan*/  PHY_CONTROL_3 ; 
 int /*<<< orphan*/  FUNC3 (struct asd_ha_struct*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_ha_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct asd_ha_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct asd_ha_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct asd_ha_struct *asd_ha, int phy_id)
{
	struct asd_phy *phy = &asd_ha->phys[phy_id];

	FUNC5(asd_ha, FUNC0(phy_id, INT_ENABLE_2), 0);
	FUNC5(asd_ha, FUNC0(phy_id, HOT_PLUG_DELAY),
			   HOTPLUG_DELAY_TIMEOUT);

	/* Get defaults from manuf. sector */
	/* XXX we need defaults for those in case MS is broken. */
	FUNC5(asd_ha, FUNC0(phy_id, PHY_CONTROL_0),
			   phy->phy_desc->phy_control_0);
	FUNC5(asd_ha, FUNC0(phy_id, PHY_CONTROL_1),
			   phy->phy_desc->phy_control_1);
	FUNC5(asd_ha, FUNC0(phy_id, PHY_CONTROL_2),
			   phy->phy_desc->phy_control_2);
	FUNC5(asd_ha, FUNC0(phy_id, PHY_CONTROL_3),
			   phy->phy_desc->phy_control_3);

	FUNC6(asd_ha, FUNC1(phy_id),
			    ASD_COMINIT_TIMEOUT);

	FUNC4(asd_ha, FUNC2(phy_id),
			   phy->id_frm_tok->dma_handle);

	FUNC3(asd_ha, phy_id, 1);

	return 0;
}