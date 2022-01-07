
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ch_id; } ;
struct net_dev_context {int dev; TYPE_1__ tx; } ;
struct most_interface {int dummy; } ;


 int dev_put (int ) ;
 struct net_dev_context* get_net_dev_hold (struct most_interface*) ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static int comp_resume_tx_channel(struct most_interface *iface,
      int channel_idx)
{
 struct net_dev_context *nd;

 nd = get_net_dev_hold(iface);
 if (!nd)
  return 0;

 if (nd->tx.ch_id != channel_idx)
  goto put_nd;

 netif_wake_queue(nd->dev);

put_nd:
 dev_put(nd->dev);
 return 0;
}
