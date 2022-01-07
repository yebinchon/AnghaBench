
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {char* cpdata; scalar_t__ cpaddr; int op; } ;
struct tape_device {int dummy; } ;


 scalar_t__ IS_ERR (struct tape_request*) ;
 int NOP ;
 int PERFORM_SS_FUNC ;
 char PREP_RD_SS_DATA ;
 char RD_ATTMSG ;
 int READ_SS_DATA ;
 int TO_READ_ATTMSG ;
 struct tape_request* tape_alloc_request (int,int) ;
 int tape_ccw_cc (scalar_t__,int ,int,char*) ;
 int tape_ccw_end (scalar_t__,int ,int ,int *) ;
 int tape_do_io_async_free (struct tape_device*,struct tape_request*) ;

__attribute__((used)) static void tape_3590_read_attmsg_async(struct tape_device *device)
{
 struct tape_request *request;
 char *buf;

 request = tape_alloc_request(3, 4096);
 if (IS_ERR(request))
  return;
 request->op = TO_READ_ATTMSG;
 buf = request->cpdata;
 buf[0] = PREP_RD_SS_DATA;
 buf[6] = RD_ATTMSG;
 tape_ccw_cc(request->cpaddr, PERFORM_SS_FUNC, 12, buf);
 tape_ccw_cc(request->cpaddr + 1, READ_SS_DATA, 4096 - 12, buf + 12);
 tape_ccw_end(request->cpaddr + 2, NOP, 0, ((void*)0));
 tape_do_io_async_free(device, request);
}
