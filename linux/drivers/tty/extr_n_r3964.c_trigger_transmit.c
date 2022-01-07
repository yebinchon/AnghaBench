
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r3964_info {scalar_t__ state; int lock; scalar_t__ bcc; int tmr; int flags; scalar_t__ nRetry; int * tx_first; } ;


 int R3964_ERROR ;
 scalar_t__ R3964_IDLE ;
 scalar_t__ R3964_TO_QVZ ;
 scalar_t__ R3964_TX_REQUEST ;
 int STX ;
 int TRACE_PS (char*) ;
 int flush (struct r3964_info*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int put_char (struct r3964_info*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void trigger_transmit(struct r3964_info *pInfo)
{
 unsigned long flags;

 spin_lock_irqsave(&pInfo->lock, flags);

 if ((pInfo->state == R3964_IDLE) && (pInfo->tx_first != ((void*)0))) {
  pInfo->state = R3964_TX_REQUEST;
  pInfo->nRetry = 0;
  pInfo->flags &= ~R3964_ERROR;
  mod_timer(&pInfo->tmr, jiffies + R3964_TO_QVZ);

  spin_unlock_irqrestore(&pInfo->lock, flags);

  TRACE_PS("trigger_transmit - sent STX");

  put_char(pInfo, STX);
  flush(pInfo);

  pInfo->bcc = 0;
 } else {
  spin_unlock_irqrestore(&pInfo->lock, flags);
 }
}
