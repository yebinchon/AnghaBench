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
struct TYPE_3__ {int atio_q_length; int /*<<< orphan*/ * tgt_vp_map; scalar_t__ atio_dma; int /*<<< orphan*/ * atio_ring; } ;
struct qla_hw_data {TYPE_1__ tgt; TYPE_2__* pdev; } ;
struct atio_from_isp {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct qla_hw_data *ha)
{
	if (!FUNC0())
		return;

	if (ha->tgt.atio_ring) {
		FUNC1(&ha->pdev->dev, (ha->tgt.atio_q_length + 1) *
		    sizeof(struct atio_from_isp), ha->tgt.atio_ring,
		    ha->tgt.atio_dma);
	}
	ha->tgt.atio_ring = NULL;
	ha->tgt.atio_dma = 0;
	FUNC2(ha->tgt.tgt_vp_map);
	ha->tgt.tgt_vp_map = NULL;
}