
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
struct raw3270_request {scalar_t__ size; scalar_t__ buffer; TYPE_1__ ccw; } ;


 int E2BIG ;
 int memcpy (scalar_t__,void*,size_t) ;

int
raw3270_request_add_data(struct raw3270_request *rq, void *data, size_t size)
{
 if (size + rq->ccw.count > rq->size)
  return -E2BIG;
 memcpy(rq->buffer + rq->ccw.count, data, size);
 rq->ccw.count += size;
 return 0;
}
