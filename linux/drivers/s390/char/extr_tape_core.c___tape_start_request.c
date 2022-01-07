
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int op; int list; int status; int device; } ;
struct tape_device {int req_queue; int tape_state; } ;


 int DBF_LH (int,char*,struct tape_request*) ;
 int ENODEV ;
 int TAPE_REQUEST_QUEUED ;





 int TS_BLKUSE ;
 int TS_INIT ;
 int TS_IN_USE ;
 int TS_UNUSED ;
 int __tape_start_io (struct tape_device*,struct tape_request*) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int tape_get_device (struct tape_device*) ;

__attribute__((used)) static int
__tape_start_request(struct tape_device *device, struct tape_request *request)
{
 int rc;

 switch (request->op) {
  case 131:
  case 132:
  case 128:
  case 129:
  case 130:
   if (device->tape_state == TS_INIT)
    break;
   if (device->tape_state == TS_UNUSED)
    break;

  default:
   if (device->tape_state == TS_BLKUSE)
    break;
   if (device->tape_state != TS_IN_USE)
    return -ENODEV;
 }


 request->device = tape_get_device(device);

 if (list_empty(&device->req_queue)) {

  rc = __tape_start_io(device, request);
  if (rc)
   return rc;

  DBF_LH(5, "Request %p added for execution.\n", request);
  list_add(&request->list, &device->req_queue);
 } else {
  DBF_LH(5, "Request %p add to queue.\n", request);
  request->status = TAPE_REQUEST_QUEUED;
  list_add_tail(&request->list, &device->req_queue);
 }
 return 0;
}
