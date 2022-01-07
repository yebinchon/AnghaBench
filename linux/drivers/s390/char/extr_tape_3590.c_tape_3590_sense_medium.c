
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int cpdata; int cpaddr; int op; } ;
struct tape_device {int dummy; } ;


 scalar_t__ IS_ERR (struct tape_request*) ;
 int MEDIUM_SENSE ;
 int PTR_ERR (struct tape_request*) ;
 int TO_MSEN ;
 struct tape_request* tape_alloc_request (int,int) ;
 int tape_ccw_end (int ,int ,int,int ) ;
 int tape_do_io_free (struct tape_device*,struct tape_request*) ;

__attribute__((used)) static int tape_3590_sense_medium(struct tape_device *device)
{
 struct tape_request *request;

 request = tape_alloc_request(1, 128);
 if (IS_ERR(request))
  return PTR_ERR(request);
 request->op = TO_MSEN;
 tape_ccw_end(request->cpaddr, MEDIUM_SENSE, 128, request->cpdata);
 return tape_do_io_free(device, request);
}
