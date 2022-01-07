
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct pqi_io_request {int refcount; } ;
struct pqi_ctrl_info {size_t next_io_request_slot; size_t max_io_slots; struct pqi_io_request* io_request_pool; } ;


 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int pqi_reinit_io_request (struct pqi_io_request*) ;

__attribute__((used)) static struct pqi_io_request *pqi_alloc_io_request(
 struct pqi_ctrl_info *ctrl_info)
{
 struct pqi_io_request *io_request;
 u16 i = ctrl_info->next_io_request_slot;

 while (1) {
  io_request = &ctrl_info->io_request_pool[i];
  if (atomic_inc_return(&io_request->refcount) == 1)
   break;
  atomic_dec(&io_request->refcount);
  i = (i + 1) % ctrl_info->max_io_slots;
 }


 ctrl_info->next_io_request_slot = (i + 1) % ctrl_info->max_io_slots;

 pqi_reinit_io_request(io_request);

 return io_request;
}
