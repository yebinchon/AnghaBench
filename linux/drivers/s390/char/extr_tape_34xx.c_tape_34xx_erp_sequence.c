
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_request {int dummy; } ;
struct tape_device {TYPE_1__* cdev; } ;
struct irb {int* ecw; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int dev_warn (int *,char*) ;
 int tape_34xx_erp_bug (struct tape_device*,struct tape_request*,struct irb*,int) ;
 int tape_34xx_erp_failed (struct tape_request*,int ) ;

__attribute__((used)) static int
tape_34xx_erp_sequence(struct tape_device *device,
         struct tape_request *request, struct irb *irb)
{
 if (irb->ecw[3] == 0x41) {



  dev_warn (&device->cdev->dev, "The block ID sequence on the "
   "tape is incorrect\n");
  return tape_34xx_erp_failed(request, -EIO);
 }




 return tape_34xx_erp_bug(device, request, irb, -2);
}
