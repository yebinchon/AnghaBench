
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {int pending_bh; int bh_running; int bh_requested; int irq_spinlock; } ;


 int BH_RECEIVE ;
 int BH_STATUS ;
 int BH_TRANSMIT ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mgsl_bh_action(struct mgsl_struct *info)
{
 unsigned long flags;
 int rc = 0;

 spin_lock_irqsave(&info->irq_spinlock,flags);

 if (info->pending_bh & BH_RECEIVE) {
  info->pending_bh &= ~BH_RECEIVE;
  rc = BH_RECEIVE;
 } else if (info->pending_bh & BH_TRANSMIT) {
  info->pending_bh &= ~BH_TRANSMIT;
  rc = BH_TRANSMIT;
 } else if (info->pending_bh & BH_STATUS) {
  info->pending_bh &= ~BH_STATUS;
  rc = BH_STATUS;
 }

 if (!rc) {

  info->bh_running = 0;
  info->bh_requested = 0;
 }

 spin_unlock_irqrestore(&info->irq_spinlock,flags);

 return rc;
}
