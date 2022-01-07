
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct TYPE_13__ {scalar_t__ atio_ring_index; scalar_t__ atio_q_length; TYPE_7__* atio_ring_ptr; TYPE_7__* atio_ring; } ;
struct TYPE_8__ {int fw_started; } ;
struct qla_hw_data {TYPE_6__ tgt; int base_qpair; TYPE_1__ flags; } ;
struct TYPE_11__ {int entry_count; scalar_t__ signature; } ;
struct TYPE_9__ {int ox_id; int s_id; } ;
struct TYPE_10__ {int exchange_addr; TYPE_2__ fcp_hdr; } ;
struct TYPE_12__ {TYPE_4__ raw; TYPE_3__ isp24; } ;
struct atio_from_isp {TYPE_5__ u; } ;
struct TYPE_14__ {scalar_t__ signature; } ;


 scalar_t__ ATIO_PROCESSED ;
 int ISP_ATIO_Q_OUT (struct scsi_qla_host*) ;
 int WRT_REG_DWORD (int ,scalar_t__) ;
 int adjust_corrupted_atio (struct atio_from_isp*) ;
 int be16_to_cpu (int ) ;
 scalar_t__ fcpcmd_is_corrupted (TYPE_7__*) ;
 int le32_to_cpu (int ) ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,int *,int ,int ,struct atio_from_isp*) ;
 int ql_log_warn ;
 int qlt_24xx_atio_pkt_all_vps (struct scsi_qla_host*,struct atio_from_isp*,int ) ;
 int qlt_send_term_exchange (int ,int *,struct atio_from_isp*,int ,int ) ;
 scalar_t__ unlikely (scalar_t__) ;
 int wmb () ;

void
qlt_24xx_process_atio_queue(struct scsi_qla_host *vha, uint8_t ha_locked)
{
 struct qla_hw_data *ha = vha->hw;
 struct atio_from_isp *pkt;
 int cnt, i;

 if (!ha->flags.fw_started)
  return;

 while ((ha->tgt.atio_ring_ptr->signature != ATIO_PROCESSED) ||
     fcpcmd_is_corrupted(ha->tgt.atio_ring_ptr)) {
  pkt = (struct atio_from_isp *)ha->tgt.atio_ring_ptr;
  cnt = pkt->u.raw.entry_count;

  if (unlikely(fcpcmd_is_corrupted(ha->tgt.atio_ring_ptr))) {





   ql_log(ql_log_warn, vha, 0xd03c,
       "corrupted fcp frame SID[%3phN] OXID[%04x] EXCG[%x] %64phN\n",
       &pkt->u.isp24.fcp_hdr.s_id,
       be16_to_cpu(pkt->u.isp24.fcp_hdr.ox_id),
       le32_to_cpu(pkt->u.isp24.exchange_addr), pkt);

   adjust_corrupted_atio(pkt);
   qlt_send_term_exchange(ha->base_qpair, ((void*)0), pkt,
       ha_locked, 0);
  } else {
   qlt_24xx_atio_pkt_all_vps(vha,
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
  wmb();
 }


 WRT_REG_DWORD(ISP_ATIO_Q_OUT(vha), ha->tgt.atio_ring_index);
}
