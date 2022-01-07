
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int dummy; } ;
struct tape_device {int dummy; } ;
struct tape_3590_sense {int bra; } ;
struct irb {scalar_t__ ecw; } ;


 int BUG () ;




 int TAPE_IO_STOP ;
 int tape_3590_erp_failed (struct tape_device*,struct tape_request*,struct irb*,int) ;
 int tape_3590_erp_retry (struct tape_device*,struct tape_request*,struct irb*) ;
 int tape_3590_erp_succeded (struct tape_device*,struct tape_request*) ;

__attribute__((used)) static int
tape_3590_erp_basic(struct tape_device *device, struct tape_request *request,
      struct irb *irb, int rc)
{
 struct tape_3590_sense *sense;

 sense = (struct tape_3590_sense *) irb->ecw;

 switch (sense->bra) {
 case 129:
  return tape_3590_erp_failed(device, request, irb, rc);
 case 131:
  return tape_3590_erp_succeded(device, request);
 case 128:
  return tape_3590_erp_retry(device, request, irb);
 case 130:
  return tape_3590_erp_failed(device, request, irb, rc);
 default:
  BUG();
  return TAPE_IO_STOP;
 }
}
