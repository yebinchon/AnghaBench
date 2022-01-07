
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mtu3_ep* private; } ;
struct mtu3_ep {int fifo_size; int fifo_addr; int fifo_seg_size; struct mtu3* mtu; } ;
struct mtu3 {int lock; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mtu3_fifo_show(struct seq_file *sf, void *unused)
{
 struct mtu3_ep *mep = sf->private;
 struct mtu3 *mtu = mep->mtu;
 unsigned long flags;

 spin_lock_irqsave(&mtu->lock, flags);
 seq_printf(sf, "fifo - seg_size:%d, addr:%d, size:%d\n",
     mep->fifo_seg_size, mep->fifo_addr, mep->fifo_size);
 spin_unlock_irqrestore(&mtu->lock, flags);

 return 0;
}
