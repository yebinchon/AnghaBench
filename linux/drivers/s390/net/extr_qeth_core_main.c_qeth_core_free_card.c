
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {TYPE_1__* gdev; int qeth_service_level; int event_wq; int read_cmd; int data; int write; int read; } ;
struct TYPE_2__ {int dev; } ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int destroy_workqueue (int ) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct qeth_card*) ;
 int qeth_clean_channel (int *) ;
 int qeth_free_qdio_queues (struct qeth_card*) ;
 int qeth_put_cmd (int ) ;
 int unregister_service_level (int *) ;

__attribute__((used)) static void qeth_core_free_card(struct qeth_card *card)
{
 QETH_CARD_TEXT(card, 2, "freecrd");
 qeth_clean_channel(&card->read);
 qeth_clean_channel(&card->write);
 qeth_clean_channel(&card->data);
 qeth_put_cmd(card->read_cmd);
 destroy_workqueue(card->event_wq);
 qeth_free_qdio_queues(card);
 unregister_service_level(&card->qeth_service_level);
 dev_set_drvdata(&card->gdev->dev, ((void*)0));
 kfree(card);
}
