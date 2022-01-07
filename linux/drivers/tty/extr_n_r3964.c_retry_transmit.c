
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r3964_info {scalar_t__ nRetry; int state; int tmr; scalar_t__ bcc; } ;


 int NAK ;
 int R3964_IDLE ;
 scalar_t__ R3964_MAX_RETRIES ;
 scalar_t__ R3964_TO_QVZ ;
 int R3964_TX_FAIL ;
 int R3964_TX_REQUEST ;
 int STX ;
 int TRACE_PE (char*,scalar_t__) ;
 int flush (struct r3964_info*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int put_char (struct r3964_info*,int ) ;
 int remove_from_tx_queue (struct r3964_info*,int ) ;
 int trigger_transmit (struct r3964_info*) ;

__attribute__((used)) static void retry_transmit(struct r3964_info *pInfo)
{
 if (pInfo->nRetry < R3964_MAX_RETRIES) {
  TRACE_PE("transmission failed. Retry #%d", pInfo->nRetry);
  pInfo->bcc = 0;
  put_char(pInfo, STX);
  flush(pInfo);
  pInfo->state = R3964_TX_REQUEST;
  pInfo->nRetry++;
  mod_timer(&pInfo->tmr, jiffies + R3964_TO_QVZ);
 } else {
  TRACE_PE("transmission failed after %d retries",
    R3964_MAX_RETRIES);

  remove_from_tx_queue(pInfo, R3964_TX_FAIL);

  put_char(pInfo, NAK);
  flush(pInfo);
  pInfo->state = R3964_IDLE;

  trigger_transmit(pInfo);
 }
}
