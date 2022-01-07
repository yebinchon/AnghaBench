
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int qeth_schedule_recovery (struct qeth_card*) ;

void qeth_tx_timeout(struct net_device *dev)
{
 struct qeth_card *card;

 card = dev->ml_priv;
 QETH_CARD_TEXT(card, 4, "txtimeo");
 qeth_schedule_recovery(card);
}
