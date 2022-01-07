
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct most_channel {struct task_struct* hdm_enqueue_task; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int hdm_enqueue_thread ;
 struct task_struct* kthread_run (int ,struct most_channel*,char*,int) ;

__attribute__((used)) static int run_enqueue_thread(struct most_channel *c, int channel_id)
{
 struct task_struct *task =
  kthread_run(hdm_enqueue_thread, c, "hdm_fifo_%d",
       channel_id);

 if (IS_ERR(task))
  return PTR_ERR(task);

 c->hdm_enqueue_task = task;
 return 0;
}
