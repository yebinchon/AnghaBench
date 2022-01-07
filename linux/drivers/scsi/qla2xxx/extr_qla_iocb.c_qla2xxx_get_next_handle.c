
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct req_que {size_t current_outstanding_cmd; size_t num_outstanding_cmds; int * outstanding_cmds; } ;



uint32_t qla2xxx_get_next_handle(struct req_que *req)
{
 uint32_t index, handle = req->current_outstanding_cmd;

 for (index = 1; index < req->num_outstanding_cmds; index++) {
  handle++;
  if (handle == req->num_outstanding_cmds)
   handle = 1;
  if (!req->outstanding_cmds[handle])
   return handle;
 }

 return 0;
}
