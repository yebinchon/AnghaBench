
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_work {int node; int flags; } ;
struct vhost_dev {int worker; int work_list; } ;


 int VHOST_WORK_QUEUED ;
 int llist_add (int *,int *) ;
 int test_and_set_bit (int ,int *) ;
 int wake_up_process (int ) ;

void vhost_work_queue(struct vhost_dev *dev, struct vhost_work *work)
{
 if (!dev->worker)
  return;

 if (!test_and_set_bit(VHOST_WORK_QUEUED, &work->flags)) {




  llist_add(&work->node, &dev->work_list);
  wake_up_process(dev->worker);
 }
}
