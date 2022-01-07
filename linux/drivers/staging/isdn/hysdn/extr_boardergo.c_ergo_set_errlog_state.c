
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; scalar_t__ err_log_state; int irq_queue; int hysdn_lock; } ;
typedef TYPE_1__ hysdn_card ;


 scalar_t__ CARD_STATE_RUN ;
 scalar_t__ ERRLOG_STATE_OFF ;
 scalar_t__ ERRLOG_STATE_ON ;
 scalar_t__ ERRLOG_STATE_START ;
 scalar_t__ ERRLOG_STATE_STOP ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
ergo_set_errlog_state(hysdn_card *card, int on)
{
 unsigned long flags;

 if (card->state != CARD_STATE_RUN) {
  card->err_log_state = ERRLOG_STATE_OFF;
  return;
 }
 spin_lock_irqsave(&card->hysdn_lock, flags);

 if (((card->err_log_state == ERRLOG_STATE_OFF) && !on) ||
     ((card->err_log_state == ERRLOG_STATE_ON) && on)) {
  spin_unlock_irqrestore(&card->hysdn_lock, flags);
  return;
 }
 if (on)
  card->err_log_state = ERRLOG_STATE_START;
 else
  card->err_log_state = ERRLOG_STATE_STOP;

 spin_unlock_irqrestore(&card->hysdn_lock, flags);
 schedule_work(&card->irq_queue);
}
