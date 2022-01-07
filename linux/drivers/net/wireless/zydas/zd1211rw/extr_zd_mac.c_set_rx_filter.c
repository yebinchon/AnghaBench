
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zd_mac {int chip; int lock; scalar_t__ pass_ctrl; } ;


 int CR_RX_FILTER ;
 int RX_FILTER_CTRL ;
 int STA_RX_FILTER ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zd_iowrite32 (int *,int ,int ) ;

__attribute__((used)) static int set_rx_filter(struct zd_mac *mac)
{
 unsigned long flags;
 u32 filter = STA_RX_FILTER;

 spin_lock_irqsave(&mac->lock, flags);
 if (mac->pass_ctrl)
  filter |= RX_FILTER_CTRL;
 spin_unlock_irqrestore(&mac->lock, flags);

 return zd_iowrite32(&mac->chip, CR_RX_FILTER, filter);
}
