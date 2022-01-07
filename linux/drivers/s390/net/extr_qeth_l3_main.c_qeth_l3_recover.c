
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_4__ {int dev; } ;


 int QETH_CARD_HEX (struct qeth_card*,int,struct qeth_card**,int) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_RECOVER_THREAD ;
 int __qeth_l3_set_offline (TYPE_1__*,int) ;
 int ccwgroup_set_offline (TYPE_1__*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int qeth_clear_thread_running_bit (struct qeth_card*,int ) ;
 int qeth_clear_thread_start_bit (struct qeth_card*,int ) ;
 int qeth_do_run_thread (struct qeth_card*,int ) ;
 int qeth_l3_set_online (TYPE_1__*) ;

__attribute__((used)) static int qeth_l3_recover(void *ptr)
{
 struct qeth_card *card;
 int rc = 0;

 card = (struct qeth_card *) ptr;
 QETH_CARD_TEXT(card, 2, "recover1");
 QETH_CARD_HEX(card, 2, &card, sizeof(void *));
 if (!qeth_do_run_thread(card, QETH_RECOVER_THREAD))
  return 0;
 QETH_CARD_TEXT(card, 2, "recover2");
 dev_warn(&card->gdev->dev,
  "A recovery process has been started for the device\n");
 __qeth_l3_set_offline(card->gdev, 1);
 rc = qeth_l3_set_online(card->gdev);
 if (!rc)
  dev_info(&card->gdev->dev,
   "Device successfully recovered!\n");
 else {
  ccwgroup_set_offline(card->gdev);
  dev_warn(&card->gdev->dev, "The qeth device driver "
    "failed to recover an error on the device\n");
 }
 qeth_clear_thread_start_bit(card, QETH_RECOVER_THREAD);
 qeth_clear_thread_running_bit(card, QETH_RECOVER_THREAD);
 return 0;
}
