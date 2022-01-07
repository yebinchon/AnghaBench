
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_interface {int dummy; } ;
struct comp_channel {int io_mutex; int wq; scalar_t__ access_ref; int unlink; int * dev; } ;


 int EINVAL ;
 int ENXIO ;
 int destroy_cdev (struct comp_channel*) ;
 int destroy_channel (struct comp_channel*) ;
 struct comp_channel* get_channel (struct most_interface*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stop_channel (struct comp_channel*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int comp_disconnect_channel(struct most_interface *iface, int channel_id)
{
 struct comp_channel *c;

 if (!iface) {
  pr_info("Bad interface pointer\n");
  return -EINVAL;
 }

 c = get_channel(iface, channel_id);
 if (!c)
  return -ENXIO;

 mutex_lock(&c->io_mutex);
 spin_lock(&c->unlink);
 c->dev = ((void*)0);
 spin_unlock(&c->unlink);
 destroy_cdev(c);
 if (c->access_ref) {
  stop_channel(c);
  wake_up_interruptible(&c->wq);
  mutex_unlock(&c->io_mutex);
 } else {
  mutex_unlock(&c->io_mutex);
  destroy_channel(c);
 }
 return 0;
}
