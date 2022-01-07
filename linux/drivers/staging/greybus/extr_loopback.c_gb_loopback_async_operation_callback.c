
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gb_operation {int id; } ;
struct gb_loopback_async_operation {int (* completion ) (struct gb_loopback_async_operation*) ;struct gb_loopback* gb; int ts; } ;
struct gb_loopback {int wq_completion; int outstanding_operations; TYPE_2__* connection; int mutex; int iteration_count; int requests_timedout; int error; int elapsed_nsecs; } ;
typedef int ktime_t ;
struct TYPE_4__ {TYPE_1__* bundle; } ;
struct TYPE_3__ {int dev; } ;


 int ETIMEDOUT ;
 int atomic_dec (int *) ;
 int dev_dbg (int *,char*,int ) ;
 int gb_loopback_calc_latency (int ,int ) ;
 int gb_loopback_calculate_stats (struct gb_loopback*,int) ;
 struct gb_loopback_async_operation* gb_operation_get_data (struct gb_operation*) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_result (struct gb_operation*) ;
 int kfree (struct gb_loopback_async_operation*) ;
 int ktime_get () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct gb_loopback_async_operation*) ;
 int wake_up (int *) ;

__attribute__((used)) static void gb_loopback_async_operation_callback(struct gb_operation *operation)
{
 struct gb_loopback_async_operation *op_async;
 struct gb_loopback *gb;
 ktime_t te;
 int result;

 te = ktime_get();
 result = gb_operation_result(operation);
 op_async = gb_operation_get_data(operation);
 gb = op_async->gb;

 mutex_lock(&gb->mutex);

 if (!result && op_async->completion)
  result = op_async->completion(op_async);

 if (!result) {
  gb->elapsed_nsecs = gb_loopback_calc_latency(op_async->ts, te);
 } else {
  gb->error++;
  if (result == -ETIMEDOUT)
   gb->requests_timedout++;
 }

 gb->iteration_count++;
 gb_loopback_calculate_stats(gb, result);

 mutex_unlock(&gb->mutex);

 dev_dbg(&gb->connection->bundle->dev, "complete operation %d\n",
  operation->id);


 atomic_dec(&op_async->gb->outstanding_operations);
 wake_up(&gb->wq_completion);


 gb_operation_put(operation);
 kfree(op_async);
}
