
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_interface {int dummy; } ;
struct mbo {scalar_t__ bus_address; int list; } ;
struct hdm_channel {int pending_list; int is_initialized; } ;
struct dim2_hdm {struct hdm_channel* hch; } ;


 int BUG_ON (int) ;
 int DMA_CHANNELS ;
 int EFAULT ;
 int EPERM ;
 int dim_lock ;
 struct dim2_hdm* iface_to_hdm (struct most_interface*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int try_start_dim_transfer (struct hdm_channel*) ;

__attribute__((used)) static int enqueue(struct most_interface *most_iface, int ch_idx,
     struct mbo *mbo)
{
 struct dim2_hdm *dev = iface_to_hdm(most_iface);
 struct hdm_channel *hdm_ch = dev->hch + ch_idx;
 unsigned long flags;

 BUG_ON(ch_idx < 0 || ch_idx >= DMA_CHANNELS);

 if (!hdm_ch->is_initialized)
  return -EPERM;

 if (mbo->bus_address == 0)
  return -EFAULT;

 spin_lock_irqsave(&dim_lock, flags);
 list_add_tail(&mbo->list, &hdm_ch->pending_list);
 spin_unlock_irqrestore(&dim_lock, flags);

 (void)try_start_dim_transfer(hdm_ch);

 return 0;
}
