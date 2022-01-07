
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_request {scalar_t__ req_stat; } ;
struct esas2r_adapter {int flags; } ;


 int AF_DEGRADED_MODE ;
 scalar_t__ RS_PENDING ;
 int build_flash_msg (struct esas2r_adapter*,struct esas2r_request*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool load_image(struct esas2r_adapter *a, struct esas2r_request *rq)
{




 rq->req_stat = RS_PENDING;
 if (test_bit(AF_DEGRADED_MODE, &a->flags))
                              ;
 else
  build_flash_msg(a, rq);

 return rq->req_stat == RS_PENDING;
}
