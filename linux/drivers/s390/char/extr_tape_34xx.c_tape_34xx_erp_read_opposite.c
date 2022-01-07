
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {scalar_t__ op; } ;
struct tape_device {int dummy; } ;


 int EIO ;
 scalar_t__ TO_RFO ;
 int tape_34xx_erp_failed (struct tape_request*,int ) ;
 int tape_34xx_erp_retry (struct tape_request*) ;
 int tape_std_read_backward (struct tape_device*,struct tape_request*) ;

__attribute__((used)) static int
tape_34xx_erp_read_opposite(struct tape_device *device,
       struct tape_request *request)
{
 if (request->op == TO_RFO) {





  tape_std_read_backward(device, request);
  return tape_34xx_erp_retry(request);
 }





 return tape_34xx_erp_failed(request, -EIO);
}
