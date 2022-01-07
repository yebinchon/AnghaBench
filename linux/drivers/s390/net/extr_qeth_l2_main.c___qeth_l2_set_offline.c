
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hwtrap; int open_when_online; } ;
struct qeth_card {int discipline_mutex; int conf_mutex; TYPE_2__* dev; TYPE_1__ info; } ;
struct TYPE_8__ {int kobj; } ;
struct ccwgroup_device {TYPE_4__ dev; } ;
struct TYPE_7__ {int flags; } ;


 int CARD_DDEV (struct qeth_card*) ;
 int CARD_RDEV (struct qeth_card*) ;
 int CARD_WDEV (struct qeth_card*) ;
 int IFF_UP ;
 int KOBJ_CHANGE ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int QETH_DIAGS_TRAP_DISARM ;
 int ccw_device_set_offline (int ) ;
 int dev_close (TYPE_2__*) ;
 struct qeth_card* dev_get_drvdata (TYPE_4__*) ;
 int kobject_uevent (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_carrier_off (TYPE_2__*) ;
 int netif_device_detach (TYPE_2__*) ;
 int qdio_free (int ) ;
 int qeth_hw_trap (struct qeth_card*,int ) ;
 int qeth_l2_stop_card (struct qeth_card*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int __qeth_l2_set_offline(struct ccwgroup_device *cgdev,
     int recovery_mode)
{
 struct qeth_card *card = dev_get_drvdata(&cgdev->dev);
 int rc = 0, rc2 = 0, rc3 = 0;

 mutex_lock(&card->discipline_mutex);
 mutex_lock(&card->conf_mutex);
 QETH_CARD_TEXT(card, 3, "setoffl");

 if ((!recovery_mode && card->info.hwtrap) || card->info.hwtrap == 2) {
  qeth_hw_trap(card, QETH_DIAGS_TRAP_DISARM);
  card->info.hwtrap = 1;
 }

 rtnl_lock();
 card->info.open_when_online = card->dev->flags & IFF_UP;
 dev_close(card->dev);
 netif_device_detach(card->dev);
 netif_carrier_off(card->dev);
 rtnl_unlock();

 qeth_l2_stop_card(card);
 rc = ccw_device_set_offline(CARD_DDEV(card));
 rc2 = ccw_device_set_offline(CARD_WDEV(card));
 rc3 = ccw_device_set_offline(CARD_RDEV(card));
 if (!rc)
  rc = (rc2) ? rc2 : rc3;
 if (rc)
  QETH_CARD_TEXT_(card, 2, "1err%d", rc);
 qdio_free(CARD_DDEV(card));


 kobject_uevent(&cgdev->dev.kobj, KOBJ_CHANGE);
 mutex_unlock(&card->conf_mutex);
 mutex_unlock(&card->discipline_mutex);
 return 0;
}
