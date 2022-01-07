
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rsi_thread {int task; int thread_done; int completion; } ;
struct rsi_common {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 scalar_t__ PTR_ERR (int ) ;
 int atomic_set (int *,int ) ;
 int init_completion (int *) ;
 int kthread_run (void*,struct rsi_common*,char*,int *) ;

__attribute__((used)) static inline int rsi_create_kthread(struct rsi_common *common,
         struct rsi_thread *thread,
         void *func_ptr,
         u8 *name)
{
 init_completion(&thread->completion);
 atomic_set(&thread->thread_done, 0);
 thread->task = kthread_run(func_ptr, common, "%s", name);
 if (IS_ERR(thread->task))
  return (int)PTR_ERR(thread->task);

 return 0;
}
