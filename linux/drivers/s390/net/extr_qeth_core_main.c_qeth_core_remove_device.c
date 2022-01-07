
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {int dev; TYPE_1__* discipline; } ;
struct ccwgroup_device {int dev; } ;
struct TYPE_2__ {int (* remove ) (struct ccwgroup_device*) ;} ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 struct qeth_card* dev_get_drvdata (int *) ;
 int free_netdev (int ) ;
 int put_device (int *) ;
 int qeth_core_free_card (struct qeth_card*) ;
 int qeth_core_free_discipline (struct qeth_card*) ;
 int stub1 (struct ccwgroup_device*) ;

__attribute__((used)) static void qeth_core_remove_device(struct ccwgroup_device *gdev)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);

 QETH_CARD_TEXT(card, 2, "removedv");

 if (card->discipline) {
  card->discipline->remove(gdev);
  qeth_core_free_discipline(card);
 }

 free_netdev(card->dev);
 qeth_core_free_card(card);
 put_device(&gdev->dev);
}
