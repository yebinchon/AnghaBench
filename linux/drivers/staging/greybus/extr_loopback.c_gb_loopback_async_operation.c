
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_operation {TYPE_1__* request; } ;
struct gb_loopback_async_operation {int ts; void* completion; struct gb_operation* operation; struct gb_loopback* gb; } ;
struct gb_loopback {int outstanding_operations; int jiffy_timeout; int connection; } ;
struct TYPE_2__ {int payload; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int gb_loopback_async_operation_callback ;
 struct gb_operation* gb_operation_create (int ,int,int,int,int ) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_request_send (struct gb_operation*,int ,int ,int ) ;
 int gb_operation_set_data (struct gb_operation*,struct gb_loopback_async_operation*) ;
 int jiffies_to_msecs (int ) ;
 int kfree (struct gb_loopback_async_operation*) ;
 int ktime_get () ;
 struct gb_loopback_async_operation* kzalloc (int,int ) ;
 int memcpy (int ,void*,int) ;

__attribute__((used)) static int gb_loopback_async_operation(struct gb_loopback *gb, int type,
           void *request, int request_size,
           int response_size,
           void *completion)
{
 struct gb_loopback_async_operation *op_async;
 struct gb_operation *operation;
 int ret;

 op_async = kzalloc(sizeof(*op_async), GFP_KERNEL);
 if (!op_async)
  return -ENOMEM;

 operation = gb_operation_create(gb->connection, type, request_size,
     response_size, GFP_KERNEL);
 if (!operation) {
  kfree(op_async);
  return -ENOMEM;
 }

 if (request_size)
  memcpy(operation->request->payload, request, request_size);

 gb_operation_set_data(operation, op_async);

 op_async->gb = gb;
 op_async->operation = operation;
 op_async->completion = completion;

 op_async->ts = ktime_get();

 atomic_inc(&gb->outstanding_operations);
 ret = gb_operation_request_send(operation,
     gb_loopback_async_operation_callback,
     jiffies_to_msecs(gb->jiffy_timeout),
     GFP_KERNEL);
 if (ret) {
  atomic_dec(&gb->outstanding_operations);
  gb_operation_put(operation);
  kfree(op_async);
 }
 return ret;
}
