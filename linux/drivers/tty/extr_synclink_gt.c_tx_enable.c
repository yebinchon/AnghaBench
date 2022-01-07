
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int lock; scalar_t__ tx_enabled; int device_name; } ;


 int DBGINFO (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_start (struct slgt_info*) ;
 int tx_stop (struct slgt_info*) ;

__attribute__((used)) static int tx_enable(struct slgt_info *info, int enable)
{
  unsigned long flags;
 DBGINFO(("%s tx_enable(%d)\n", info->device_name, enable));
 spin_lock_irqsave(&info->lock,flags);
 if (enable) {
  if (!info->tx_enabled)
   tx_start(info);
 } else {
  if (info->tx_enabled)
   tx_stop(info);
 }
 spin_unlock_irqrestore(&info->lock,flags);
 return 0;
}
