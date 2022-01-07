
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct scm_request {int retries; void* next_aidaw; int error; struct scm_blk_dev* bdev; struct aob* request; struct aob* aob; } ;
struct scm_blk_dev {int scmdev; } ;
struct aob_rq_header {int scmdev; } ;
struct TYPE_2__ {scalar_t__ data; int cmd_code; } ;
struct aob {int * msb; TYPE_1__ request; } ;


 int ARQB_CMD_MOVE ;
 int BLK_STS_OK ;
 int memset (struct aob*,int ,int) ;
 int nr_requests_per_io ;
 struct aob_rq_header* to_aobrq (struct scm_request*) ;

__attribute__((used)) static inline void scm_request_init(struct scm_blk_dev *bdev,
        struct scm_request *scmrq)
{
 struct aob_rq_header *aobrq = to_aobrq(scmrq);
 struct aob *aob = scmrq->aob;

 memset(scmrq->request, 0,
        nr_requests_per_io * sizeof(scmrq->request[0]));
 memset(aob, 0, sizeof(*aob));
 aobrq->scmdev = bdev->scmdev;
 aob->request.cmd_code = ARQB_CMD_MOVE;
 aob->request.data = (u64) aobrq;
 scmrq->bdev = bdev;
 scmrq->retries = 4;
 scmrq->error = BLK_STS_OK;

 scmrq->next_aidaw = (void *) &aob->msb[nr_requests_per_io];
}
