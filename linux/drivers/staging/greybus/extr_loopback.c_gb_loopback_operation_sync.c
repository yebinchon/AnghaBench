
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gb_operation {TYPE_3__* response; TYPE_1__* request; } ;
struct gb_loopback {int elapsed_nsecs; TYPE_4__* connection; } ;
typedef int ktime_t ;
struct TYPE_8__ {TYPE_2__* bundle; } ;
struct TYPE_7__ {int payload_size; void* payload; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {void* payload; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int,...) ;
 int gb_loopback_calc_latency (int ,int ) ;
 struct gb_operation* gb_operation_create (TYPE_4__*,int,int,int,int ) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_request_send_sync (struct gb_operation*) ;
 int ktime_get () ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static int gb_loopback_operation_sync(struct gb_loopback *gb, int type,
          void *request, int request_size,
          void *response, int response_size)
{
 struct gb_operation *operation;
 ktime_t ts, te;
 int ret;

 ts = ktime_get();
 operation = gb_operation_create(gb->connection, type, request_size,
     response_size, GFP_KERNEL);
 if (!operation)
  return -ENOMEM;

 if (request_size)
  memcpy(operation->request->payload, request, request_size);

 ret = gb_operation_request_send_sync(operation);
 if (ret) {
  dev_err(&gb->connection->bundle->dev,
   "synchronous operation failed: %d\n", ret);
  goto out_put_operation;
 } else {
  if (response_size == operation->response->payload_size) {
   memcpy(response, operation->response->payload,
          response_size);
  } else {
   dev_err(&gb->connection->bundle->dev,
    "response size %zu expected %d\n",
    operation->response->payload_size,
    response_size);
   ret = -EINVAL;
   goto out_put_operation;
  }
 }

 te = ktime_get();


 gb->elapsed_nsecs = gb_loopback_calc_latency(ts, te);

out_put_operation:
 gb_operation_put(operation);

 return ret;
}
