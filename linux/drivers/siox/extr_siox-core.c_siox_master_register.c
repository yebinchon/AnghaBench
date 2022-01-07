
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_master {int poll_thread; int dev; scalar_t__ active; int busno; int last_poll; int devices; int lock; int pushpull; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_set_name (int *,char*,int ) ;
 int device_add (int *) ;
 int jiffies ;
 int kthread_run (int ,struct siox_master*,char*,int ) ;
 int kthread_stop (int ) ;
 int mutex_init (int *) ;
 int siox_is_registered ;
 int siox_poll_thread ;

int siox_master_register(struct siox_master *smaster)
{
 int ret;

 if (!siox_is_registered)
  return -EPROBE_DEFER;

 if (!smaster->pushpull)
  return -EINVAL;

 dev_set_name(&smaster->dev, "siox-%d", smaster->busno);

 mutex_init(&smaster->lock);
 INIT_LIST_HEAD(&smaster->devices);

 smaster->last_poll = jiffies;
 smaster->poll_thread = kthread_run(siox_poll_thread, smaster,
        "siox-%d", smaster->busno);
 if (IS_ERR(smaster->poll_thread)) {
  smaster->active = 0;
  return PTR_ERR(smaster->poll_thread);
 }

 ret = device_add(&smaster->dev);
 if (ret)
  kthread_stop(smaster->poll_thread);

 return ret;
}
