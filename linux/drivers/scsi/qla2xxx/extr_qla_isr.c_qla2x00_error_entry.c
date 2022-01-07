
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_12__ {int handle; int entry_type; int entry_status; } ;
typedef TYPE_1__ sts_entry_t ;
struct rsp_que {int id; } ;
struct req_que {int dummy; } ;
struct qla_hw_data {size_t max_req_queues; struct req_que** req_q_map; } ;
struct TYPE_13__ {int (* done ) (TYPE_2__*,int) ;} ;
typedef TYPE_2__ srb_t ;
struct TYPE_14__ {struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;







 int DID_BUS_BUSY ;
 int DID_ERROR ;



 size_t MSW (int) ;

 int QLA_TGT_HANDLE_MASK ;
 int QLA_TGT_SKIP_HANDLE ;
 int RF_BUSY ;


 int ql_dbg (int ,TYPE_3__*,int,char*,int,int,int,int ) ;
 int ql_dbg_async ;
 int ql_log (int ,TYPE_3__*,int,char*,size_t) ;
 int ql_log_warn ;
 TYPE_2__* qla2x00_get_sp_from_handle (TYPE_3__*,char const*,struct req_que*,TYPE_1__*) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static int
qla2x00_error_entry(scsi_qla_host_t *vha, struct rsp_que *rsp, sts_entry_t *pkt)
{
 srb_t *sp;
 struct qla_hw_data *ha = vha->hw;
 const char func[] = "ERROR-IOCB";
 uint16_t que = MSW(pkt->handle);
 struct req_que *req = ((void*)0);
 int res = DID_ERROR << 16;

 ql_dbg(ql_dbg_async, vha, 0x502a,
     "iocb type %xh with error status %xh, handle %xh, rspq id %d\n",
     pkt->entry_type, pkt->entry_status, pkt->handle, rsp->id);

 if (que >= ha->max_req_queues || !ha->req_q_map[que])
  goto fatal;

 req = ha->req_q_map[que];

 if (pkt->entry_status & RF_BUSY)
  res = DID_BUS_BUSY << 16;

 if ((pkt->handle & ~QLA_TGT_HANDLE_MASK) == QLA_TGT_SKIP_HANDLE)
  return 0;

 switch (pkt->entry_type) {
 case 130:
 case 128:
 case 129:
 case 132:
 case 134:
 case 133:
 case 138:
 case 131:
 default:
  sp = qla2x00_get_sp_from_handle(vha, func, req, pkt);
  if (sp) {
   sp->done(sp, res);
   return 0;
  }
  break;

 case 137:
 case 135:
 case 136:
  return 1;
 }
fatal:
 ql_log(ql_log_warn, vha, 0x5030,
     "Error entry - invalid handle/queue (%04x).\n", que);
 return 0;
}
