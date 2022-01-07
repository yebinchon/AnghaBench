
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ linked; } ;
struct TYPE_3__ {scalar_t__ linked; } ;
struct net_dev_context {int dev; TYPE_2__ tx; TYPE_1__ rx; } ;
struct most_interface {int dummy; } ;


 int dev_hold (int ) ;
 struct net_dev_context* get_net_dev (struct most_interface*) ;
 int list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct net_dev_context *get_net_dev_hold(struct most_interface *iface)
{
 struct net_dev_context *nd;
 unsigned long flags;

 spin_lock_irqsave(&list_lock, flags);
 nd = get_net_dev(iface);
 if (nd && nd->rx.linked && nd->tx.linked)
  dev_hold(nd->dev);
 else
  nd = ((void*)0);
 spin_unlock_irqrestore(&list_lock, flags);
 return nd;
}
