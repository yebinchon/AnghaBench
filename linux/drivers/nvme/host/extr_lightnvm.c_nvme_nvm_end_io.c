
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {struct nvm_rq* end_io_data; } ;
struct nvm_rq {int error; int ppa_status; } ;
typedef int blk_status_t ;
struct TYPE_3__ {int u64; } ;
struct TYPE_4__ {int cmd; int status; TYPE_1__ result; } ;


 int blk_mq_free_request (struct request*) ;
 int kfree (int ) ;
 int le64_to_cpu (int ) ;
 int nvm_end_io (struct nvm_rq*) ;
 TYPE_2__* nvme_req (struct request*) ;

__attribute__((used)) static void nvme_nvm_end_io(struct request *rq, blk_status_t status)
{
 struct nvm_rq *rqd = rq->end_io_data;

 rqd->ppa_status = le64_to_cpu(nvme_req(rq)->result.u64);
 rqd->error = nvme_req(rq)->status;
 nvm_end_io(rqd);

 kfree(nvme_req(rq)->cmd);
 blk_mq_free_request(rq);
}
