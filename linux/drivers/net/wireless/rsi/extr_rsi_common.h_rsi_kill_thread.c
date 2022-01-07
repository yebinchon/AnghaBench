
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_thread {int task; int event; int thread_done; } ;


 int atomic_inc (int *) ;
 int kthread_stop (int ) ;
 int rsi_set_event (int *) ;

__attribute__((used)) static inline int rsi_kill_thread(struct rsi_thread *handle)
{
 atomic_inc(&handle->thread_done);
 rsi_set_event(&handle->event);

 return kthread_stop(handle->task);
}
