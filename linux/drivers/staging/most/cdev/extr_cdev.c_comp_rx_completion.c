
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbo {int hdm_channel_id; int ifp; } ;
struct comp_channel {int wq; int fifo; int unlink; int dev; int access_ref; } ;


 int EINVAL ;
 int ENODEV ;
 int ENXIO ;
 struct comp_channel* get_channel (int ,int ) ;
 int kfifo_in (int *,struct mbo**,int) ;
 scalar_t__ kfifo_is_full (int *) ;
 int pr_info (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int comp_rx_completion(struct mbo *mbo)
{
 struct comp_channel *c;

 if (!mbo)
  return -EINVAL;

 c = get_channel(mbo->ifp, mbo->hdm_channel_id);
 if (!c)
  return -ENXIO;

 spin_lock(&c->unlink);
 if (!c->access_ref || !c->dev) {
  spin_unlock(&c->unlink);
  return -ENODEV;
 }
 kfifo_in(&c->fifo, &mbo, 1);
 spin_unlock(&c->unlink);




 wake_up_interruptible(&c->wq);
 return 0;
}
