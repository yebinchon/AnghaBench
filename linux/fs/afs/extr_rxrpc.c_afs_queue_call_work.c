
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_call {int work; TYPE_1__* type; } ;
struct TYPE_2__ {scalar_t__ work; } ;


 int INIT_WORK (int *,scalar_t__) ;
 int afs_call_trace_work ;
 int afs_get_call (struct afs_call*,int ) ;
 int afs_put_call (struct afs_call*) ;
 int afs_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void afs_queue_call_work(struct afs_call *call)
{
 if (call->type->work) {
  INIT_WORK(&call->work, call->type->work);

  afs_get_call(call, afs_call_trace_work);
  if (!queue_work(afs_wq, &call->work))
   afs_put_call(call);
 }
}
