
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {TYPE_1__* discipline; int gdev; } ;
struct ccwgroup_device {int dev; } ;
typedef enum qeth_discipline_id { ____Placeholder_qeth_discipline_id } qeth_discipline_id ;
struct TYPE_2__ {int (* setup ) (int ) ;int (* set_online ) (struct ccwgroup_device*) ;} ;


 scalar_t__ IS_IQD (struct qeth_card*) ;
 int QETH_DISCIPLINE_LAYER2 ;
 int QETH_DISCIPLINE_LAYER3 ;
 struct qeth_card* dev_get_drvdata (int *) ;
 int qeth_core_free_discipline (struct qeth_card*) ;
 int qeth_core_load_discipline (struct qeth_card*,int) ;
 int stub1 (int ) ;
 int stub2 (struct ccwgroup_device*) ;

__attribute__((used)) static int qeth_core_set_online(struct ccwgroup_device *gdev)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);
 int rc = 0;
 enum qeth_discipline_id def_discipline;

 if (!card->discipline) {
  def_discipline = IS_IQD(card) ? QETH_DISCIPLINE_LAYER3 :
      QETH_DISCIPLINE_LAYER2;
  rc = qeth_core_load_discipline(card, def_discipline);
  if (rc)
   goto err;
  rc = card->discipline->setup(card->gdev);
  if (rc) {
   qeth_core_free_discipline(card);
   goto err;
  }
 }
 rc = card->discipline->set_online(gdev);
err:
 return rc;
}
