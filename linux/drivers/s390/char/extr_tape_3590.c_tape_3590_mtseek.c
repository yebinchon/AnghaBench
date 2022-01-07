
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {scalar_t__ cpaddr; scalar_t__ cpdata; int op; } ;
struct tape_device {scalar_t__ modeset_byte; } ;
typedef int __u32 ;


 int DBF_EVENT (int,char*,int) ;
 scalar_t__ IS_ERR (struct tape_request*) ;
 int LOCATE ;
 int MODE_SET_DB ;
 int NOP ;
 int PTR_ERR (struct tape_request*) ;
 int TO_LBL ;
 struct tape_request* tape_alloc_request (int,int) ;
 int tape_ccw_cc (scalar_t__,int ,int,scalar_t__) ;
 int tape_ccw_end (scalar_t__,int ,int ,int *) ;
 int tape_do_io_free (struct tape_device*,struct tape_request*) ;

__attribute__((used)) static int
tape_3590_mtseek(struct tape_device *device, int count)
{
 struct tape_request *request;

 DBF_EVENT(6, "xsee id: %x\n", count);
 request = tape_alloc_request(3, 4);
 if (IS_ERR(request))
  return PTR_ERR(request);
 request->op = TO_LBL;
 tape_ccw_cc(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
 *(__u32 *) request->cpdata = count;
 tape_ccw_cc(request->cpaddr + 1, LOCATE, 4, request->cpdata);
 tape_ccw_end(request->cpaddr + 2, NOP, 0, ((void*)0));
 return tape_do_io_free(device, request);
}
