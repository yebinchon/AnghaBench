
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct scsi_qla_host {scalar_t__ req_q_count; scalar_t__ request_in; TYPE_1__* isp_ops; } ;
struct TYPE_2__ {scalar_t__ (* rd_shdw_req_q_out ) (struct scsi_qla_host*) ;} ;


 scalar_t__ REQUEST_QUEUE_DEPTH ;
 scalar_t__ stub1 (struct scsi_qla_host*) ;

__attribute__((used)) static int
qla4xxx_space_in_req_ring(struct scsi_qla_host *ha, uint16_t req_cnt)
{
 uint16_t cnt;


 if ((req_cnt + 2) >= ha->req_q_count) {
  cnt = (uint16_t) ha->isp_ops->rd_shdw_req_q_out(ha);
  if (ha->request_in < cnt)
   ha->req_q_count = cnt - ha->request_in;
  else
   ha->req_q_count = REQUEST_QUEUE_DEPTH -
      (ha->request_in - cnt);
 }


 if ((req_cnt + 2) < ha->req_q_count)
  return 1;
 else
  return 0;
}
