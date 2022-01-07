
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct cpwd {int initialized; int irq; } ;


 int DRIVER_NAME ;
 int EBUSY ;
 int ENODEV ;
 int IRQF_SHARED ;



 struct cpwd* cpwd_device ;
 int cpwd_interrupt ;
 int cpwd_mutex ;
 int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int ) ;
 scalar_t__ request_irq (int ,int *,int ,int ,struct cpwd*) ;
 int stream_open (struct inode*,struct file*) ;

__attribute__((used)) static int cpwd_open(struct inode *inode, struct file *f)
{
 struct cpwd *p = cpwd_device;

 mutex_lock(&cpwd_mutex);
 switch (iminor(inode)) {
 case 130:
 case 129:
 case 128:
  break;

 default:
  mutex_unlock(&cpwd_mutex);
  return -ENODEV;
 }


 if (!p->initialized) {
  if (request_irq(p->irq, &cpwd_interrupt,
    IRQF_SHARED, DRIVER_NAME, p)) {
   pr_err("Cannot register IRQ %d\n", p->irq);
   mutex_unlock(&cpwd_mutex);
   return -EBUSY;
  }
  p->initialized = 1;
 }

 mutex_unlock(&cpwd_mutex);

 return stream_open(inode, f);
}
