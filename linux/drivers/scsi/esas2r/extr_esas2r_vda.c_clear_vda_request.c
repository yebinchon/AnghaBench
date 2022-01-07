
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct esas2r_request {int req_list; TYPE_2__* data_buf; int req_stat; TYPE_2__* vrq; } ;
struct TYPE_3__ {int handle; } ;
struct TYPE_4__ {TYPE_1__ scsi; } ;


 int ESAS2R_DATA_BUF_LEN ;
 int INIT_LIST_HEAD (int *) ;
 int RS_PENDING ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void clear_vda_request(struct esas2r_request *rq)
{
 u32 handle = rq->vrq->scsi.handle;

 memset(rq->vrq, 0, sizeof(*rq->vrq));

 rq->vrq->scsi.handle = handle;

 rq->req_stat = RS_PENDING;



 memset(rq->data_buf, 0, ESAS2R_DATA_BUF_LEN);






 INIT_LIST_HEAD(&rq->req_list);
}
