
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_target_port {int dummy; } ;
struct nvmefc_tgt_ls_req {scalar_t__ rsplen; int (* done ) (struct nvmefc_tgt_ls_req*) ;int rspbuf; } ;
struct nvmefc_ls_req {scalar_t__ rsplen; int rspaddr; } ;
struct fcloop_lsreq {int work; struct nvmefc_ls_req* lsreq; } ;


 int memcpy (int ,int ,scalar_t__) ;
 int schedule_work (int *) ;
 int stub1 (struct nvmefc_tgt_ls_req*) ;
 struct fcloop_lsreq* tgt_ls_req_to_lsreq (struct nvmefc_tgt_ls_req*) ;

__attribute__((used)) static int
fcloop_xmt_ls_rsp(struct nvmet_fc_target_port *tport,
   struct nvmefc_tgt_ls_req *tgt_lsreq)
{
 struct fcloop_lsreq *tls_req = tgt_ls_req_to_lsreq(tgt_lsreq);
 struct nvmefc_ls_req *lsreq = tls_req->lsreq;

 memcpy(lsreq->rspaddr, tgt_lsreq->rspbuf,
  ((lsreq->rsplen < tgt_lsreq->rsplen) ?
    lsreq->rsplen : tgt_lsreq->rsplen));
 tgt_lsreq->done(tgt_lsreq);

 schedule_work(&tls_req->work);

 return 0;
}
