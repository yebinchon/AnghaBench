
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct most_interface {int dummy; } ;
struct hdm_channel {int is_initialized; scalar_t__* reset_dbr_size; int pending_list; int started_list; int name; int ch; } ;
struct dim2_hdm {int atx_idx; struct hdm_channel* hch; } ;


 int BUG_ON (int) ;
 scalar_t__ DIM_NO_ERROR ;
 int DMA_CHANNELS ;
 int EFAULT ;
 int EPERM ;
 int complete_all_mbos (int *) ;
 int dim2_tasklet ;
 scalar_t__ dim_destroy_channel (int *) ;
 int dim_lock ;
 struct dim2_hdm* iface_to_hdm (struct most_interface*) ;
 int pr_err (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static int poison_channel(struct most_interface *most_iface, int ch_idx)
{
 struct dim2_hdm *dev = iface_to_hdm(most_iface);
 struct hdm_channel *hdm_ch = dev->hch + ch_idx;
 unsigned long flags;
 u8 hal_ret;
 int ret = 0;

 BUG_ON(ch_idx < 0 || ch_idx >= DMA_CHANNELS);

 if (!hdm_ch->is_initialized)
  return -EPERM;

 tasklet_disable(&dim2_tasklet);
 spin_lock_irqsave(&dim_lock, flags);
 hal_ret = dim_destroy_channel(&hdm_ch->ch);
 hdm_ch->is_initialized = 0;
 if (ch_idx == dev->atx_idx)
  dev->atx_idx = -1;
 spin_unlock_irqrestore(&dim_lock, flags);
 tasklet_enable(&dim2_tasklet);
 if (hal_ret != DIM_NO_ERROR) {
  pr_err("HAL Failed to close channel %s\n", hdm_ch->name);
  ret = -EFAULT;
 }

 complete_all_mbos(&hdm_ch->started_list);
 complete_all_mbos(&hdm_ch->pending_list);
 if (hdm_ch->reset_dbr_size)
  *hdm_ch->reset_dbr_size = 0;

 return ret;
}
