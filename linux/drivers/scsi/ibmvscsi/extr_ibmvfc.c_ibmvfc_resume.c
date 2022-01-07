
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_dev {int dummy; } ;
struct ibmvfc_host {TYPE_1__* host; int tasklet; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int host_lock; } ;


 struct ibmvfc_host* dev_get_drvdata (struct device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int tasklet_schedule (int *) ;
 struct vio_dev* to_vio_dev (struct device*) ;
 int vio_disable_interrupts (struct vio_dev*) ;

__attribute__((used)) static int ibmvfc_resume(struct device *dev)
{
 unsigned long flags;
 struct ibmvfc_host *vhost = dev_get_drvdata(dev);
 struct vio_dev *vdev = to_vio_dev(dev);

 spin_lock_irqsave(vhost->host->host_lock, flags);
 vio_disable_interrupts(vdev);
 tasklet_schedule(&vhost->tasklet);
 spin_unlock_irqrestore(vhost->host->host_lock, flags);
 return 0;
}
