
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scm_request {TYPE_2__* aob; struct request** request; } ;
struct request {int dummy; } ;
struct TYPE_3__ {size_t msb_count; } ;
struct TYPE_4__ {TYPE_1__ request; } ;



__attribute__((used)) static inline void scm_request_set(struct scm_request *scmrq,
       struct request *req)
{
 scmrq->request[scmrq->aob->request.msb_count] = req;
}
