
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_7__ {int entry_type; int entry_status; } ;
typedef TYPE_1__ sts_entry_t ;
typedef int sts_cont_entry_t ;
struct TYPE_8__ {size_t handle_count; int * handle; } ;
typedef TYPE_2__ sts22_entry_t ;
struct TYPE_9__ {size_t handle_count; int * handle; } ;
typedef TYPE_3__ sts21_entry_t ;
struct scsi_qla_host {int dummy; } ;
struct rsp_que {int req; } ;
struct mbx_entry {int dummy; } ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,int,int ) ;
 int ql_log_warn ;
 int qla2x00_ct_entry (struct scsi_qla_host*,int ,TYPE_1__*,int const) ;
 int qla2x00_mbx_iocb_entry (struct scsi_qla_host*,int ,struct mbx_entry*) ;
 int qla2x00_process_completed_request (struct scsi_qla_host*,int ,int ) ;
 int qla2x00_status_cont_entry (struct rsp_que*,int *) ;
 int qla2x00_status_entry (struct scsi_qla_host*,struct rsp_que*,TYPE_1__*) ;

__attribute__((used)) static void qla2x00_process_response_entry(struct scsi_qla_host *vha,
        struct rsp_que *rsp,
        sts_entry_t *pkt)
{
 sts21_entry_t *sts21_entry;
 sts22_entry_t *sts22_entry;
 uint16_t handle_cnt;
 uint16_t cnt;

 switch (pkt->entry_type) {
 case 130:
  qla2x00_status_entry(vha, rsp, pkt);
  break;
 case 129:
  sts21_entry = (sts21_entry_t *)pkt;
  handle_cnt = sts21_entry->handle_count;
  for (cnt = 0; cnt < handle_cnt; cnt++)
   qla2x00_process_completed_request(vha, rsp->req,
      sts21_entry->handle[cnt]);
  break;
 case 128:
  sts22_entry = (sts22_entry_t *)pkt;
  handle_cnt = sts22_entry->handle_count;
  for (cnt = 0; cnt < handle_cnt; cnt++)
   qla2x00_process_completed_request(vha, rsp->req,
      sts22_entry->handle[cnt]);
  break;
 case 131:
  qla2x00_status_cont_entry(rsp, (sts_cont_entry_t *)pkt);
  break;
 case 132:
  qla2x00_mbx_iocb_entry(vha, rsp->req, (struct mbx_entry *)pkt);
  break;
 case 133:
  qla2x00_ct_entry(vha, rsp->req, pkt, 133);
  break;
 default:

  ql_log(ql_log_warn, vha, 0x504a,
         "Received unknown response pkt type %x entry status=%x.\n",
         pkt->entry_type, pkt->entry_status);
  break;
 }
}
