
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccw_device {int dev; TYPE_2__* private; } ;
typedef enum cdev_todo { ____Placeholder_cdev_todo } cdev_todo ;
struct TYPE_3__ {int devno; int ssid; } ;
struct TYPE_4__ {int todo; int todo_work; TYPE_1__ dev_id; } ;


 int CIO_MSG_EVENT (int,char*,int ,int ,int) ;
 int cio_work_q ;
 int get_device (int *) ;
 int put_device (int *) ;
 int queue_work (int ,int *) ;

void ccw_device_sched_todo(struct ccw_device *cdev, enum cdev_todo todo)
{
 CIO_MSG_EVENT(4, "cdev_todo: sched cdev=0.%x.%04x todo=%d\n",
        cdev->private->dev_id.ssid, cdev->private->dev_id.devno,
        todo);
 if (cdev->private->todo >= todo)
  return;
 cdev->private->todo = todo;

 if (!get_device(&cdev->dev))
  return;
 if (!queue_work(cio_work_q, &cdev->private->todo_work)) {

  put_device(&cdev->dev);
 }
}
