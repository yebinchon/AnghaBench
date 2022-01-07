
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct r3964_message* disc_data; } ;
struct r3964_message {struct r3964_message* tx_buf; struct r3964_message* rx_buf; struct r3964_message* next; int lock; int * tx_last; struct r3964_message* tx_first; int pid; scalar_t__ msg_count; struct r3964_message* firstClient; int tmr; } ;
struct r3964_info {struct r3964_info* tx_buf; struct r3964_info* rx_buf; struct r3964_info* next; int lock; int * tx_last; struct r3964_info* tx_first; int pid; scalar_t__ msg_count; struct r3964_info* firstClient; int tmr; } ;
struct r3964_client_info {struct r3964_client_info* tx_buf; struct r3964_client_info* rx_buf; struct r3964_client_info* next; int lock; int * tx_last; struct r3964_client_info* tx_first; int pid; scalar_t__ msg_count; struct r3964_client_info* firstClient; int tmr; } ;
struct r3964_block_header {struct r3964_block_header* tx_buf; struct r3964_block_header* rx_buf; struct r3964_block_header* next; int lock; int * tx_last; struct r3964_block_header* tx_first; int pid; scalar_t__ msg_count; struct r3964_block_header* firstClient; int tmr; } ;


 int TRACE_L (char*) ;
 int TRACE_M (char*,struct r3964_message*) ;
 int del_timer_sync (int *) ;
 int kfree (struct r3964_message*) ;
 int put_pid (int ) ;
 struct r3964_message* remove_msg (struct r3964_message*,struct r3964_message*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void r3964_close(struct tty_struct *tty)
{
 struct r3964_info *pInfo = tty->disc_data;
 struct r3964_client_info *pClient, *pNext;
 struct r3964_message *pMsg;
 struct r3964_block_header *pHeader, *pNextHeader;
 unsigned long flags;

 TRACE_L("close");





 del_timer_sync(&pInfo->tmr);


 pClient = pInfo->firstClient;
 while (pClient) {
  pNext = pClient->next;
  while (pClient->msg_count) {
   pMsg = remove_msg(pInfo, pClient);
   if (pMsg) {
    kfree(pMsg);
    TRACE_M("r3964_close - msg kfree %p", pMsg);
   }
  }
  put_pid(pClient->pid);
  kfree(pClient);
  TRACE_M("r3964_close - client kfree %p", pClient);
  pClient = pNext;
 }

 spin_lock_irqsave(&pInfo->lock, flags);
 pHeader = pInfo->tx_first;
 pInfo->tx_first = pInfo->tx_last = ((void*)0);
 spin_unlock_irqrestore(&pInfo->lock, flags);

 while (pHeader) {
  pNextHeader = pHeader->next;
  kfree(pHeader);
  pHeader = pNextHeader;
 }


 kfree(pInfo->rx_buf);
 TRACE_M("r3964_close - rx_buf kfree %p", pInfo->rx_buf);
 kfree(pInfo->tx_buf);
 TRACE_M("r3964_close - tx_buf kfree %p", pInfo->tx_buf);
 kfree(pInfo);
 TRACE_M("r3964_close - info kfree %p", pInfo);
}
