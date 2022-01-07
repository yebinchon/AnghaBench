
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct req_que {size_t current_outstanding_cmd; int num_outstanding_cmds; int * outstanding_cmds; } ;
struct qla_qpair {TYPE_1__* vha; struct req_que* req; } ;
struct TYPE_2__ {int vp_idx; } ;


 size_t QLA_TGT_NULL_HANDLE ;
 size_t QLA_TGT_SKIP_HANDLE ;
 int ql_dbg (int ,TYPE_1__*,int,char*,int ) ;
 int ql_dbg_io ;

__attribute__((used)) static inline uint32_t qlt_make_handle(struct qla_qpair *qpair)
{
 uint32_t h;
 int index;
 uint8_t found = 0;
 struct req_que *req = qpair->req;

 h = req->current_outstanding_cmd;

 for (index = 1; index < req->num_outstanding_cmds; index++) {
  h++;
  if (h == req->num_outstanding_cmds)
   h = 1;

  if (h == QLA_TGT_SKIP_HANDLE)
   continue;

  if (!req->outstanding_cmds[h]) {
   found = 1;
   break;
  }
 }

 if (found) {
  req->current_outstanding_cmd = h;
 } else {
  ql_dbg(ql_dbg_io, qpair->vha, 0x305b,
      "qla_target(%d): Ran out of empty cmd slots\n",
      qpair->vha->vp_idx);
  h = QLA_TGT_NULL_HANDLE;
 }

 return h;
}
