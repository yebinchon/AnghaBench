
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_dev_channel {int linked; int ch_id; } ;
struct net_dev_context {struct net_device* dev; struct net_dev_channel rx; struct net_dev_channel tx; int list; struct most_interface* iface; } ;
struct most_interface {int dummy; } ;
struct most_channel_config {scalar_t__ data_type; scalar_t__ direction; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ MOST_CH_ASYNC ;
 scalar_t__ MOST_CH_TX ;
 int NET_NAME_UNKNOWN ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 struct net_dev_context* get_net_dev (struct most_interface*) ;
 int list_add (int *,int *) ;
 int list_lock ;
 int most_nd_setup ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int net_devices ;
 struct net_dev_context* netdev_priv (struct net_device*) ;
 int pr_err (char*) ;
 int probe_disc_mt ;
 scalar_t__ register_netdev (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int comp_probe_channel(struct most_interface *iface, int channel_idx,
         struct most_channel_config *ccfg, char *name,
         char *args)
{
 struct net_dev_context *nd;
 struct net_dev_channel *ch;
 struct net_device *dev;
 unsigned long flags;
 int ret = 0;

 if (!iface)
  return -EINVAL;

 if (ccfg->data_type != MOST_CH_ASYNC)
  return -EINVAL;

 mutex_lock(&probe_disc_mt);
 nd = get_net_dev(iface);
 if (!nd) {
  dev = alloc_netdev(sizeof(struct net_dev_context), "meth%d",
       NET_NAME_UNKNOWN, most_nd_setup);
  if (!dev) {
   ret = -ENOMEM;
   goto unlock;
  }

  nd = netdev_priv(dev);
  nd->iface = iface;
  nd->dev = dev;

  spin_lock_irqsave(&list_lock, flags);
  list_add(&nd->list, &net_devices);
  spin_unlock_irqrestore(&list_lock, flags);

  ch = ccfg->direction == MOST_CH_TX ? &nd->tx : &nd->rx;
 } else {
  ch = ccfg->direction == MOST_CH_TX ? &nd->tx : &nd->rx;
  if (ch->linked) {
   pr_err("direction is allocated\n");
   ret = -EINVAL;
   goto unlock;
  }

  if (register_netdev(nd->dev)) {
   pr_err("register_netdev() failed\n");
   ret = -EINVAL;
   goto unlock;
  }
 }
 ch->ch_id = channel_idx;
 ch->linked = 1;

unlock:
 mutex_unlock(&probe_disc_mt);
 return ret;
}
