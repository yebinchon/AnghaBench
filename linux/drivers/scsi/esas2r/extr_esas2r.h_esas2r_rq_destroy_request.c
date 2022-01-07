
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct esas2r_request {int * data_buf; TYPE_2__* vrq; } ;
struct esas2r_adapter {int ** req_table; } ;
struct TYPE_3__ {int handle; } ;
struct TYPE_4__ {TYPE_1__ scsi; } ;


 size_t LOWORD (int ) ;
 int esas2r_rq_free_sg_lists (struct esas2r_request*,struct esas2r_adapter*) ;

__attribute__((used)) static inline void esas2r_rq_destroy_request(struct esas2r_request *rq,
          struct esas2r_adapter *a)

{
 esas2r_rq_free_sg_lists(rq, a);
 a->req_table[LOWORD(rq->vrq->scsi.handle)] = ((void*)0);
 rq->data_buf = ((void*)0);
}
