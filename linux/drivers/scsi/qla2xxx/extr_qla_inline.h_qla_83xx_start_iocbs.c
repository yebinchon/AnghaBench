
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req_que {scalar_t__ ring_index; scalar_t__ length; int req_q_in; int ring_ptr; int ring; } ;
struct qla_qpair {struct req_que* req; } ;


 int WRT_REG_DWORD (int ,scalar_t__) ;

__attribute__((used)) static inline void
qla_83xx_start_iocbs(struct qla_qpair *qpair)
{
 struct req_que *req = qpair->req;

 req->ring_index++;
 if (req->ring_index == req->length) {
  req->ring_index = 0;
  req->ring_ptr = req->ring;
 } else
  req->ring_ptr++;

 WRT_REG_DWORD(req->req_q_in, req->ring_index);
}
