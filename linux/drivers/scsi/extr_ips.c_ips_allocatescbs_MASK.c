#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ std_list; scalar_t__ enh_list; } ;
struct TYPE_13__ {struct TYPE_13__* q_next; void* sg_busaddr; TYPE_2__ sg_list; void* scb_busaddr; } ;
typedef  TYPE_3__ ips_scb_t ;
struct TYPE_14__ {int max_cmds; TYPE_3__* scb_freelist; TYPE_3__* scbs; TYPE_1__* pcidev; } ;
typedef  TYPE_4__ ips_ha_t ;
typedef  void* dma_addr_t ;
struct TYPE_15__ {scalar_t__ std_list; scalar_t__ enh_list; int /*<<< orphan*/ * list; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_5__ IPS_SG_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IPS_MAX_SG ; 
 int FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(ips_ha_t * ha)
{
	ips_scb_t *scb_p;
	IPS_SG_LIST ips_sg;
	int i;
	dma_addr_t command_dma, sg_dma;

	FUNC2("ips_allocatescbs", 1);

	/* Allocate memory for the SCBs */
	ha->scbs = FUNC3(&ha->pcidev->dev,
			ha->max_cmds * sizeof (ips_scb_t),
			&command_dma, GFP_KERNEL);
	if (ha->scbs == NULL)
		return 0;
	ips_sg.list = FUNC3(&ha->pcidev->dev,
			FUNC0(ha) * IPS_MAX_SG * ha->max_cmds,
			&sg_dma, GFP_KERNEL);
	if (ips_sg.list == NULL) {
		FUNC4(&ha->pcidev->dev,
				    ha->max_cmds * sizeof (ips_scb_t), ha->scbs,
				    command_dma);
		return 0;
	}

	FUNC5(ha->scbs, 0, ha->max_cmds * sizeof (ips_scb_t));

	for (i = 0; i < ha->max_cmds; i++) {
		scb_p = &ha->scbs[i];
		scb_p->scb_busaddr = command_dma + sizeof (ips_scb_t) * i;
		/* set up S/G list */
		if (FUNC1(ha)) {
			scb_p->sg_list.enh_list =
			    ips_sg.enh_list + i * IPS_MAX_SG;
			scb_p->sg_busaddr =
			    sg_dma + FUNC0(ha) * IPS_MAX_SG * i;
		} else {
			scb_p->sg_list.std_list =
			    ips_sg.std_list + i * IPS_MAX_SG;
			scb_p->sg_busaddr =
			    sg_dma + FUNC0(ha) * IPS_MAX_SG * i;
		}

		/* add to the free list */
		if (i < ha->max_cmds - 1) {
			scb_p->q_next = ha->scb_freelist;
			ha->scb_freelist = scb_p;
		}
	}

	/* success */
	return (1);
}