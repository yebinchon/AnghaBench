
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_dev_channel {int linked; int ch_id; } ;
struct net_dev_context {int dev; int list; struct net_dev_channel tx; struct net_dev_channel rx; } ;
struct most_interface {int dummy; } ;


 int EINVAL ;
 int free_netdev (int ) ;
 struct net_dev_context* get_net_dev (struct most_interface*) ;
 int list_del (int *) ;
 int list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int probe_disc_mt ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static int comp_disconnect_channel(struct most_interface *iface,
       int channel_idx)
{
 struct net_dev_context *nd;
 struct net_dev_channel *ch;
 unsigned long flags;
 int ret = 0;

 mutex_lock(&probe_disc_mt);
 nd = get_net_dev(iface);
 if (!nd) {
  ret = -EINVAL;
  goto unlock;
 }

 if (nd->rx.linked && channel_idx == nd->rx.ch_id) {
  ch = &nd->rx;
 } else if (nd->tx.linked && channel_idx == nd->tx.ch_id) {
  ch = &nd->tx;
 } else {
  ret = -EINVAL;
  goto unlock;
 }

 if (nd->rx.linked && nd->tx.linked) {
  spin_lock_irqsave(&list_lock, flags);
  ch->linked = 0;
  spin_unlock_irqrestore(&list_lock, flags);





  unregister_netdev(nd->dev);
 } else {
  spin_lock_irqsave(&list_lock, flags);
  list_del(&nd->list);
  spin_unlock_irqrestore(&list_lock, flags);

  free_netdev(nd->dev);
 }

unlock:
 mutex_unlock(&probe_disc_mt);
 return ret;
}
