
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {scalar_t__ cpaddr; int op; } ;
struct tape_device {int * modeset_byte; } ;


 int CCW_CMD_TIC ;
 int FORSPACEFILE ;
 scalar_t__ IS_ERR (struct tape_request*) ;
 int MODE_SET_DB ;
 int MTREW ;
 int NOP ;
 int PTR_ERR (struct tape_request*) ;
 int TO_FSF ;
 struct tape_request* tape_alloc_request (int,int ) ;
 int tape_ccw_cc (scalar_t__,int ,int,int *) ;
 int tape_ccw_end (scalar_t__,int ,int ,scalar_t__) ;
 int tape_do_io_interruptible (struct tape_device*,struct tape_request*) ;
 int tape_free_request (struct tape_request*) ;
 int tape_mtop (struct tape_device*,int ,int) ;

int
tape_std_mtreten(struct tape_device *device, int mt_count)
{
 struct tape_request *request;

 request = tape_alloc_request(4, 0);
 if (IS_ERR(request))
  return PTR_ERR(request);
 request->op = TO_FSF;

 tape_ccw_cc(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
 tape_ccw_cc(request->cpaddr + 1,FORSPACEFILE, 0, ((void*)0));
 tape_ccw_cc(request->cpaddr + 2, NOP, 0, ((void*)0));
 tape_ccw_end(request->cpaddr + 3, CCW_CMD_TIC, 0, request->cpaddr);

 tape_do_io_interruptible(device, request);
 tape_free_request(request);
 return tape_mtop(device, MTREW, 1);
}
