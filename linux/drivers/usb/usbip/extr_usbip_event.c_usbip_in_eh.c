
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 struct task_struct* worker_context ;

int usbip_in_eh(struct task_struct *task)
{
 if (task == worker_context)
  return 1;

 return 0;
}
