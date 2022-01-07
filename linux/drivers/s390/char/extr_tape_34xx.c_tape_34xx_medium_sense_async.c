
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int * callback_data; void* callback; int cpdata; int cpaddr; int op; } ;
struct tape_device {int dummy; } ;


 int DBF_EXCEPTION (int,char*) ;
 scalar_t__ IS_ERR (struct tape_request*) ;
 int SENSE ;
 int TO_MSEN ;
 scalar_t__ __tape_34xx_medium_sense ;
 struct tape_request* tape_alloc_request (int,int) ;
 int tape_ccw_end (int ,int ,int,int ) ;
 int tape_do_io_async (struct tape_device*,struct tape_request*) ;

__attribute__((used)) static void tape_34xx_medium_sense_async(struct tape_device *device)
{
 struct tape_request *request;

 request = tape_alloc_request(1, 32);
 if (IS_ERR(request)) {
  DBF_EXCEPTION(6, "MSEN fail\n");
  return;
 }

 request->op = TO_MSEN;
 tape_ccw_end(request->cpaddr, SENSE, 32, request->cpdata);
 request->callback = (void *) __tape_34xx_medium_sense;
 request->callback_data = ((void*)0);
 tape_do_io_async(device, request);
}
