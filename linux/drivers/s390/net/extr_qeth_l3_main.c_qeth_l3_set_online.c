
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ open_when_online; scalar_t__ hwtrap; } ;
struct TYPE_4__ {int sniffer; } ;
struct qeth_card {int discipline_mutex; int conf_mutex; TYPE_2__ info; int state; TYPE_1__ options; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int kobj; } ;
struct ccwgroup_device {TYPE_3__ dev; } ;


 int CARD_DDEV (struct qeth_card*) ;
 int CARD_RDEV (struct qeth_card*) ;
 int CARD_STATE_HARDSETUP ;
 int CARD_STATE_SOFTSETUP ;
 int CARD_WDEV (struct qeth_card*) ;
 int ENODEV ;
 int KOBJ_CHANGE ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int QETH_DIAGS_CMD_TRAP ;
 int QETH_DIAGS_TRAP_ARM ;
 int ccw_device_set_offline (int ) ;
 struct qeth_card* dev_get_drvdata (TYPE_3__*) ;
 int dev_open (struct net_device*,int *) ;
 int kobject_uevent (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int qdio_free (int ) ;
 int qeth_core_hardsetup_card (struct qeth_card*,int*) ;
 int qeth_enable_hw_features (struct net_device*) ;
 scalar_t__ qeth_hw_trap (struct qeth_card*,int ) ;
 int qeth_init_qdio_queues (struct qeth_card*) ;
 scalar_t__ qeth_is_diagass_supported (struct qeth_card*,int ) ;
 int qeth_l3_recover_ip (struct qeth_card*) ;
 int qeth_l3_setadapter_parms (struct qeth_card*) ;
 int qeth_l3_setrouting_v4 (struct qeth_card*) ;
 int qeth_l3_setrouting_v6 (struct qeth_card*) ;
 int qeth_l3_setup_netdev (struct qeth_card*,int) ;
 int qeth_l3_start_ipassists (struct qeth_card*) ;
 int qeth_l3_stop_card (struct qeth_card*) ;
 int qeth_netdev_is_registered (struct net_device*) ;
 int qeth_print_status_message (struct qeth_card*) ;
 int qeth_set_allowed_threads (struct qeth_card*,int,int ) ;
 int qeth_trace_features (struct qeth_card*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int qeth_l3_set_online(struct ccwgroup_device *gdev)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);
 struct net_device *dev = card->dev;
 int rc = 0;
 bool carrier_ok;

 mutex_lock(&card->discipline_mutex);
 mutex_lock(&card->conf_mutex);
 QETH_CARD_TEXT(card, 2, "setonlin");

 rc = qeth_core_hardsetup_card(card, &carrier_ok);
 if (rc) {
  QETH_CARD_TEXT_(card, 2, "2err%04x", rc);
  rc = -ENODEV;
  goto out_remove;
 }

 if (qeth_is_diagass_supported(card, QETH_DIAGS_CMD_TRAP)) {
  if (card->info.hwtrap &&
      qeth_hw_trap(card, QETH_DIAGS_TRAP_ARM))
   card->info.hwtrap = 0;
 } else
  card->info.hwtrap = 0;

 card->state = CARD_STATE_HARDSETUP;
 qeth_print_status_message(card);


 QETH_CARD_TEXT(card, 2, "softsetp");

 rc = qeth_l3_setadapter_parms(card);
 if (rc)
  QETH_CARD_TEXT_(card, 2, "2err%04x", rc);
 if (!card->options.sniffer) {
  rc = qeth_l3_start_ipassists(card);
  if (rc) {
   QETH_CARD_TEXT_(card, 2, "3err%d", rc);
   goto out_remove;
  }
  rc = qeth_l3_setrouting_v4(card);
  if (rc)
   QETH_CARD_TEXT_(card, 2, "4err%04x", rc);
  rc = qeth_l3_setrouting_v6(card);
  if (rc)
   QETH_CARD_TEXT_(card, 2, "5err%04x", rc);
 }

 rc = qeth_init_qdio_queues(card);
 if (rc) {
  QETH_CARD_TEXT_(card, 2, "6err%d", rc);
  rc = -ENODEV;
  goto out_remove;
 }
 card->state = CARD_STATE_SOFTSETUP;

 qeth_set_allowed_threads(card, 0xffffffff, 0);
 qeth_l3_recover_ip(card);

 if (!qeth_netdev_is_registered(dev)) {
  rc = qeth_l3_setup_netdev(card, carrier_ok);
  if (rc)
   goto out_remove;
 } else {
  rtnl_lock();
  if (carrier_ok)
   netif_carrier_on(dev);
  else
   netif_carrier_off(dev);

  netif_device_attach(dev);
  qeth_enable_hw_features(dev);

  if (card->info.open_when_online) {
   card->info.open_when_online = 0;
   dev_open(dev, ((void*)0));
  }
  rtnl_unlock();
 }
 qeth_trace_features(card);

 kobject_uevent(&gdev->dev.kobj, KOBJ_CHANGE);
 mutex_unlock(&card->conf_mutex);
 mutex_unlock(&card->discipline_mutex);
 return 0;
out_remove:
 qeth_l3_stop_card(card);
 ccw_device_set_offline(CARD_DDEV(card));
 ccw_device_set_offline(CARD_WDEV(card));
 ccw_device_set_offline(CARD_RDEV(card));
 qdio_free(CARD_DDEV(card));

 mutex_unlock(&card->conf_mutex);
 mutex_unlock(&card->discipline_mutex);
 return rc;
}
