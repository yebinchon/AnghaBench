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
struct asd_phy {int /*<<< orphan*/ * id_frm_tok; } ;
struct TYPE_7__ {int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  dma_handle; } ;
struct TYPE_8__ {TYPE_3__ next_scb; int /*<<< orphan*/ * dl; int /*<<< orphan*/ * actual_dl; int /*<<< orphan*/ * tc_index_bitmap; int /*<<< orphan*/ * tc_index_array; scalar_t__ edb_arr; scalar_t__ escb_arr; } ;
struct TYPE_5__ {int /*<<< orphan*/ * area; } ;
struct TYPE_6__ {TYPE_1__ ue; int /*<<< orphan*/ * ddb_bitmap; int /*<<< orphan*/ * scb_ext; int /*<<< orphan*/ * ddb_ext; } ;
struct asd_ha_struct {int /*<<< orphan*/ * scb_pool; TYPE_4__ seq; TYPE_2__ hw_prof; struct asd_phy* phys; } ;

/* Variables and functions */
 int ASD_MAX_PHYS ; 
 int /*<<< orphan*/  FUNC0 (struct asd_ha_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct asd_ha_struct *asd_ha)
{
	int i;

	if (asd_ha->hw_prof.ddb_ext)
		FUNC0(asd_ha, asd_ha->hw_prof.ddb_ext);
	if (asd_ha->hw_prof.scb_ext)
		FUNC0(asd_ha, asd_ha->hw_prof.scb_ext);

	FUNC5(asd_ha->hw_prof.ddb_bitmap);
	asd_ha->hw_prof.ddb_bitmap = NULL;

	for (i = 0; i < ASD_MAX_PHYS; i++) {
		struct asd_phy *phy = &asd_ha->phys[i];

		FUNC0(asd_ha, phy->id_frm_tok);
	}
	if (asd_ha->seq.escb_arr)
		FUNC2(asd_ha);
	if (asd_ha->seq.edb_arr)
		FUNC1(asd_ha);
	if (asd_ha->hw_prof.ue.area) {
		FUNC5(asd_ha->hw_prof.ue.area);
		asd_ha->hw_prof.ue.area = NULL;
	}
	if (asd_ha->seq.tc_index_array) {
		FUNC5(asd_ha->seq.tc_index_array);
		FUNC5(asd_ha->seq.tc_index_bitmap);
		asd_ha->seq.tc_index_array = NULL;
		asd_ha->seq.tc_index_bitmap = NULL;
	}
	if (asd_ha->seq.actual_dl) {
			FUNC0(asd_ha, asd_ha->seq.actual_dl);
			asd_ha->seq.actual_dl = NULL;
			asd_ha->seq.dl = NULL;
	}
	if (asd_ha->seq.next_scb.vaddr) {
		FUNC4(asd_ha->scb_pool, asd_ha->seq.next_scb.vaddr,
			      asd_ha->seq.next_scb.dma_handle);
		asd_ha->seq.next_scb.vaddr = NULL;
	}
	FUNC3(asd_ha->scb_pool);
	asd_ha->scb_pool = NULL;
}