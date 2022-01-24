#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {void* invalid_crc_cnt; void* invalid_trans_word; void* primitive_seq_proto_err; void* loss_of_signal_cnt; void* loss_of_synch_cnt; void* link_failure_cnt; } ;
struct TYPE_6__ {TYPE_1__ link_status; void* port_type; } ;
struct fc_rdp_link_error_status_desc {void* length; TYPE_2__ info; void* tag; } ;
struct TYPE_7__ {int linkFailureCnt; int lossSyncCnt; int lossSignalCnt; int primSeqErrCnt; int invalidXmitWord; int crcCnt; } ;
typedef  TYPE_3__ READ_LNK_VAR ;

/* Variables and functions */
 int RDP_LINK_ERROR_STATUS_DESC_TAG ; 
 int VN_PT_PHY_PF_PORT ; 
 int VN_PT_PHY_SHIFT ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static uint32_t
FUNC1(struct fc_rdp_link_error_status_desc *desc,
		READ_LNK_VAR *stat)
{
	uint32_t type;

	desc->tag = FUNC0(RDP_LINK_ERROR_STATUS_DESC_TAG);

	type = VN_PT_PHY_PF_PORT << VN_PT_PHY_SHIFT;

	desc->info.port_type = FUNC0(type);

	desc->info.link_status.link_failure_cnt =
		FUNC0(stat->linkFailureCnt);
	desc->info.link_status.loss_of_synch_cnt =
		FUNC0(stat->lossSyncCnt);
	desc->info.link_status.loss_of_signal_cnt =
		FUNC0(stat->lossSignalCnt);
	desc->info.link_status.primitive_seq_proto_err =
		FUNC0(stat->primSeqErrCnt);
	desc->info.link_status.invalid_trans_word =
		FUNC0(stat->invalidXmitWord);
	desc->info.link_status.invalid_crc_cnt = FUNC0(stat->crcCnt);

	desc->length = FUNC0(sizeof(desc->info));

	return sizeof(struct fc_rdp_link_error_status_desc);
}