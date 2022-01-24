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
typedef  size_t uint16_t ;
struct scsi_qla_host {size_t vp_idx; struct qla_hw_data* hw; } ;
struct TYPE_4__ {TYPE_1__* tgt_vp_map; } ;
struct qla_hw_data {TYPE_2__ tgt; int /*<<< orphan*/  vp_idx_map; } ;
struct TYPE_3__ {struct scsi_qla_host* vha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline
struct scsi_qla_host *FUNC3(struct scsi_qla_host *vha,
	uint16_t vp_idx)
{
	struct qla_hw_data *ha = vha->hw;

	if (vha->vp_idx == vp_idx)
		return vha;

	FUNC0(ha->tgt.tgt_vp_map == NULL);
	if (FUNC1(FUNC2(vp_idx, ha->vp_idx_map)))
		return ha->tgt.tgt_vp_map[vp_idx].vha;

	return NULL;
}