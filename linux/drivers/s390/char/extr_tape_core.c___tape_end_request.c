
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int rc; int callback_data; int (* callback ) (struct tape_request*,int ) ;int list; int status; } ;
struct tape_device {int req_queue; } ;


 int DBF_LH (int,char*,struct tape_device*,struct tape_request*,int) ;
 int TAPE_REQUEST_DONE ;
 int __tape_start_next_request (struct tape_device*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int stub1 (struct tape_request*,int ) ;

__attribute__((used)) static void
__tape_end_request(
 struct tape_device * device,
 struct tape_request * request,
 int rc)
{
 DBF_LH(6, "__tape_end_request(%p, %p, %i)\n", device, request, rc);
 if (request) {
  request->rc = rc;
  request->status = TAPE_REQUEST_DONE;


  list_del(&request->list);


  if (request->callback != ((void*)0))
   request->callback(request, request->callback_data);
 }


 if (!list_empty(&device->req_queue))
  __tape_start_next_request(device);
}
