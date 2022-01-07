
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct scsi_qla_host {int vp_idx; TYPE_1__* hw; } ;
struct rsp_que {int id; struct req_que* req; } ;
struct req_que {int id; size_t num_outstanding_cmds; int ** outstanding_cmds; } ;
struct TYPE_2__ {struct req_que** req_q_map; } ;


 int GET_QID (size_t) ;
 size_t QLA_CMD_HANDLE_MASK ;
 size_t QLA_TGT_HANDLE_MASK ;
 size_t QLA_TGT_NULL_HANDLE ;
 size_t QLA_TGT_SKIP_HANDLE ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,...) ;
 int ql_dbg_async ;
 int ql_dbg_tgt ;
 int ql_dbg_tgt_mgt ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *qlt_ctio_to_cmd(struct scsi_qla_host *vha,
 struct rsp_que *rsp, uint32_t handle, void *ctio)
{
 void *cmd = ((void*)0);
 struct req_que *req;
 int qid = GET_QID(handle);
 uint32_t h = handle & ~QLA_TGT_HANDLE_MASK;

 if (unlikely(h == QLA_TGT_SKIP_HANDLE))
  return ((void*)0);

 if (qid == rsp->req->id) {
  req = rsp->req;
 } else if (vha->hw->req_q_map[qid]) {
  ql_dbg(ql_dbg_tgt_mgt, vha, 0x1000a,
      "qla_target(%d): CTIO completion with different QID %d handle %x\n",
      vha->vp_idx, rsp->id, handle);
  req = vha->hw->req_q_map[qid];
 } else {
  return ((void*)0);
 }

 h &= QLA_CMD_HANDLE_MASK;

 if (h != QLA_TGT_NULL_HANDLE) {
  if (unlikely(h >= req->num_outstanding_cmds)) {
   ql_dbg(ql_dbg_tgt, vha, 0xe052,
       "qla_target(%d): Wrong handle %x received\n",
       vha->vp_idx, handle);
   return ((void*)0);
  }

  cmd = (void *) req->outstanding_cmds[h];
  if (unlikely(cmd == ((void*)0))) {
   ql_dbg(ql_dbg_async, vha, 0xe053,
       "qla_target(%d): Suspicious: unable to find the command with handle %x req->id %d rsp->id %d\n",
    vha->vp_idx, handle, req->id, rsp->id);
   return ((void*)0);
  }
  req->outstanding_cmds[h] = ((void*)0);
 } else if (ctio != ((void*)0)) {

  ql_dbg(ql_dbg_tgt, vha, 0xe054,
      "qla_target(%d): Wrong CTIO received: QLA24xx doesn't "
      "support NULL handles\n", vha->vp_idx);
  return ((void*)0);
 }

 return cmd;
}
