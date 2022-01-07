
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int count; int cda; } ;
struct raw3270_request {TYPE_1__ ccw; } ;
struct idal_buffer {int size; int data; } ;


 int CCW_FLAG_IDA ;
 int __pa (int ) ;

void
raw3270_request_set_idal(struct raw3270_request *rq, struct idal_buffer *ib)
{
 rq->ccw.cda = __pa(ib->data);
 rq->ccw.count = ib->size;
 rq->ccw.flags |= CCW_FLAG_IDA;
}
