
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mtu3* private; } ;
struct mtu3_ep {int flags; int type; int name; } ;
struct mtu3 {int num_eps; int lock; struct mtu3_ep* out_eps; struct mtu3_ep* in_eps; } ;


 int MTU3_EP_ENABLED ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mtu3_ep_used_show(struct seq_file *sf, void *unused)
{
 struct mtu3 *mtu = sf->private;
 struct mtu3_ep *mep;
 unsigned long flags;
 int used = 0;
 int i;

 spin_lock_irqsave(&mtu->lock, flags);

 for (i = 0; i < mtu->num_eps; i++) {
  mep = mtu->in_eps + i;
  if (mep->flags & MTU3_EP_ENABLED) {
   seq_printf(sf, "%s - type: %d\n", mep->name, mep->type);
   used++;
  }

  mep = mtu->out_eps + i;
  if (mep->flags & MTU3_EP_ENABLED) {
   seq_printf(sf, "%s - type: %d\n", mep->name, mep->type);
   used++;
  }
 }
 seq_printf(sf, "total used: %d eps\n", used);

 spin_unlock_irqrestore(&mtu->lock, flags);

 return 0;
}
