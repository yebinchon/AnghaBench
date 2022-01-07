
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int comm; } ;


 int ENODEV ;
 int INIT ;
 int cm_dev_list ;
 TYPE_1__* current ;
 scalar_t__ list_empty (int *) ;
 int riocm_debug (int ,char*,int ,int ,struct file*) ;
 int task_pid_nr (TYPE_1__*) ;

__attribute__((used)) static int riocm_cdev_open(struct inode *inode, struct file *filp)
{
 riocm_debug(INIT, "by %s(%d) filp=%p ",
      current->comm, task_pid_nr(current), filp);

 if (list_empty(&cm_dev_list))
  return -ENODEV;

 return 0;
}
