
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_req {int ccws; } ;
struct raw3215_info {int flags; struct raw3215_req* queued_write; int cdev; struct raw3215_req* queued_read; } ;


 int RAW3215_STOPPED ;
 int RAW3215_THROTTLED ;
 int RAW3215_WORKING ;
 int ccw_device_start (int ,int ,unsigned long,int ,int ) ;

__attribute__((used)) static void raw3215_start_io(struct raw3215_info *raw)
{
 struct raw3215_req *req;
 int res;

 req = raw->queued_read;
 if (req != ((void*)0) &&
     !(raw->flags & (RAW3215_WORKING | RAW3215_THROTTLED))) {

  raw->queued_read = ((void*)0);
  res = ccw_device_start(raw->cdev, req->ccws,
           (unsigned long) req, 0, 0);
  if (res != 0) {

   raw->queued_read = req;
  } else {
   raw->flags |= RAW3215_WORKING;
  }
 }
 req = raw->queued_write;
 if (req != ((void*)0) &&
     !(raw->flags & (RAW3215_WORKING | RAW3215_STOPPED))) {

  raw->queued_write = ((void*)0);
  res = ccw_device_start(raw->cdev, req->ccws,
           (unsigned long) req, 0, 0);
  if (res != 0) {

   raw->queued_write = req;
  } else {
   raw->flags |= RAW3215_WORKING;
  }
 }
}
