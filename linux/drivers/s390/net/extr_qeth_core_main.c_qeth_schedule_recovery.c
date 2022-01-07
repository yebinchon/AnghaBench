
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int kernel_thread_starter; } ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_RECOVER_THREAD ;
 scalar_t__ qeth_set_thread_start_bit (struct qeth_card*,int ) ;
 int schedule_work (int *) ;

void qeth_schedule_recovery(struct qeth_card *card)
{
 QETH_CARD_TEXT(card, 2, "startrec");
 if (qeth_set_thread_start_bit(card, QETH_RECOVER_THREAD) == 0)
  schedule_work(&card->kernel_thread_starter);
}
