#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct TYPE_13__ {scalar_t__ atio_ring_index; scalar_t__ atio_q_length; TYPE_7__* atio_ring_ptr; TYPE_7__* atio_ring; } ;
struct TYPE_8__ {int /*<<< orphan*/  fw_started; } ;
struct qla_hw_data {TYPE_6__ tgt; int /*<<< orphan*/  base_qpair; TYPE_1__ flags; } ;
struct TYPE_11__ {int entry_count; scalar_t__ signature; } ;
struct TYPE_9__ {int /*<<< orphan*/  ox_id; int /*<<< orphan*/  s_id; } ;
struct TYPE_10__ {int /*<<< orphan*/  exchange_addr; TYPE_2__ fcp_hdr; } ;
struct TYPE_12__ {TYPE_4__ raw; TYPE_3__ isp24; } ;
struct atio_from_isp {TYPE_5__ u; } ;
struct TYPE_14__ {scalar_t__ signature; } ;

/* Variables and functions */
 scalar_t__ ATIO_PROCESSED ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct atio_from_isp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct atio_from_isp*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,struct atio_from_isp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct atio_from_isp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11(struct scsi_qla_host *vha, uint8_t ha_locked)
{
	struct qla_hw_data *ha = vha->hw;
	struct atio_from_isp *pkt;
	int cnt, i;

	if (!ha->flags.fw_started)
		return;

	while ((ha->tgt.atio_ring_ptr->signature != ATIO_PROCESSED) ||
	    FUNC4(ha->tgt.atio_ring_ptr)) {
		pkt = (struct atio_from_isp *)ha->tgt.atio_ring_ptr;
		cnt = pkt->u.raw.entry_count;

		if (FUNC9(FUNC4(ha->tgt.atio_ring_ptr))) {
			/*
			 * This packet is corrupted. The header + payload
			 * can not be trusted. There is no point in passing
			 * it further up.
			 */
			FUNC6(ql_log_warn, vha, 0xd03c,
			    "corrupted fcp frame SID[%3phN] OXID[%04x] EXCG[%x] %64phN\n",
			    &pkt->u.isp24.fcp_hdr.s_id,
			    FUNC3(pkt->u.isp24.fcp_hdr.ox_id),
			    FUNC5(pkt->u.isp24.exchange_addr), pkt);

			FUNC2(pkt);
			FUNC8(ha->base_qpair, NULL, pkt,
			    ha_locked, 0);
		} else {
			FUNC7(vha,
			    (struct atio_from_isp *)pkt, ha_locked);
		}

		for (i = 0; i < cnt; i++) {
			ha->tgt.atio_ring_index++;
			if (ha->tgt.atio_ring_index == ha->tgt.atio_q_length) {
				ha->tgt.atio_ring_index = 0;
				ha->tgt.atio_ring_ptr = ha->tgt.atio_ring;
			} else
				ha->tgt.atio_ring_ptr++;

			pkt->u.raw.signature = ATIO_PROCESSED;
			pkt = (struct atio_from_isp *)ha->tgt.atio_ring_ptr;
		}
		FUNC10();
	}

	/* Adjust ring index */
	FUNC1(FUNC0(vha), ha->tgt.atio_ring_index);
}