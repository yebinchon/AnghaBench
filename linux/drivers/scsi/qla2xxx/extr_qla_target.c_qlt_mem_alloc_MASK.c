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
struct qla_tgt_vp_map {int dummy; } ;
struct TYPE_4__ {int atio_q_length; int /*<<< orphan*/  tgt_vp_map; int /*<<< orphan*/  atio_ring; int /*<<< orphan*/  atio_dma; } ;
struct qla_hw_data {TYPE_2__ tgt; TYPE_1__* pdev; } ;
struct atio_from_isp {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_MULTI_ID_FABRIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct qla_hw_data *ha)
{
	if (!FUNC0())
		return 0;

	ha->tgt.tgt_vp_map = FUNC2(MAX_MULTI_ID_FABRIC,
				     sizeof(struct qla_tgt_vp_map),
				     GFP_KERNEL);
	if (!ha->tgt.tgt_vp_map)
		return -ENOMEM;

	ha->tgt.atio_ring = FUNC1(&ha->pdev->dev,
	    (ha->tgt.atio_q_length + 1) * sizeof(struct atio_from_isp),
	    &ha->tgt.atio_dma, GFP_KERNEL);
	if (!ha->tgt.atio_ring) {
		FUNC3(ha->tgt.tgt_vp_map);
		return -ENOMEM;
	}
	return 0;
}