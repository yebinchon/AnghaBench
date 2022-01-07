
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_work {int dummy; } ;
struct vhost_flush_struct {int wait_event; int work; } ;
struct vhost_dev {scalar_t__ worker; } ;


 int init_completion (int *) ;
 int vhost_flush_work ;
 int vhost_work_init (int *,int ) ;
 int vhost_work_queue (struct vhost_dev*,int *) ;
 int wait_for_completion (int *) ;

void vhost_work_flush(struct vhost_dev *dev, struct vhost_work *work)
{
 struct vhost_flush_struct flush;

 if (dev->worker) {
  init_completion(&flush.wait_event);
  vhost_work_init(&flush.work, vhost_flush_work);

  vhost_work_queue(dev, &flush.work);
  wait_for_completion(&flush.wait_event);
 }
}
