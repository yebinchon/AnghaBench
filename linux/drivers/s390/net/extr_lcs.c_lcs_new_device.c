
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int name; int flags; int * netdev_ops; int dev_addr; int dev_port; struct lcs_card* ml_priv; } ;
struct TYPE_4__ {int ccwdev; } ;
struct TYPE_3__ {int ccwdev; } ;
struct lcs_card {int state; int lan_type; int ip_assists_supported; TYPE_2__ read; TYPE_1__ write; struct net_device* dev; int mac; int portno; int lan_type_trans; } ;
struct ccwgroup_device {int dev; int * cdev; } ;
typedef enum lcs_dev_states { ____Placeholder_lcs_dev_states } lcs_dev_states ;


 int DEV_STATE_RECOVER ;
 int DEV_STATE_UP ;
 int ENODEV ;
 int IFF_UP ;
 int LCS_DBF_HEX (int,int ,struct lcs_card**,int) ;
 int LCS_DBF_TEXT (int,int ,char*) ;


 int LCS_IPASS_IPV6_SUPPORT ;
 int LCS_IPASS_MULTICAST_SUPPORT ;
 int LCS_MAC_LENGTH ;
 struct net_device* alloc_etherdev (int ) ;
 struct net_device* alloc_fddidev (int ) ;
 int ccw_device_set_offline (int ) ;
 int ccw_device_set_online (int ) ;
 int dev_err (int *,char*,int,int) ;
 struct lcs_card* dev_get_drvdata (int *) ;
 int eth_type_trans ;
 int fddi_type_trans ;
 int lcs_check_multicast_support (struct lcs_card*) ;
 int lcs_detect (struct lcs_card*) ;
 int lcs_mc_netdev_ops ;
 int lcs_netdev_ops ;
 scalar_t__ lcs_register_netdev (struct ccwgroup_device*) ;
 int lcs_set_allowed_threads (struct lcs_card*,int) ;
 int lcs_set_multicast_list (struct net_device*) ;
 int lcs_setup_card (struct lcs_card*) ;
 int lcs_stopcard (struct lcs_card*) ;
 int memcpy (int ,int ,int ) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_err (char*) ;
 int pr_info (char*,int ,char*) ;
 int setup ;

__attribute__((used)) static int
lcs_new_device(struct ccwgroup_device *ccwgdev)
{
 struct lcs_card *card;
 struct net_device *dev=((void*)0);
 enum lcs_dev_states recover_state;
 int rc;

 card = dev_get_drvdata(&ccwgdev->dev);
 if (!card)
  return -ENODEV;

 LCS_DBF_TEXT(2, setup, "newdev");
 LCS_DBF_HEX(3, setup, &card, sizeof(void*));
 card->read.ccwdev = ccwgdev->cdev[0];
 card->write.ccwdev = ccwgdev->cdev[1];

 recover_state = card->state;
 rc = ccw_device_set_online(card->read.ccwdev);
 if (rc)
  goto out_err;
 rc = ccw_device_set_online(card->write.ccwdev);
 if (rc)
  goto out_werr;

 LCS_DBF_TEXT(3, setup, "lcsnewdv");

 lcs_setup_card(card);
 rc = lcs_detect(card);
 if (rc) {
  LCS_DBF_TEXT(2, setup, "dtctfail");
  dev_err(&ccwgdev->dev,
   "Detecting a network adapter for LCS devices"
   " failed with rc=%d (0x%x)\n", rc, rc);
  lcs_stopcard(card);
  goto out;
 }
 if (card->dev) {
  LCS_DBF_TEXT(2, setup, "samedev");
  LCS_DBF_HEX(3, setup, &card, sizeof(void*));
  goto netdev_out;
 }
 switch (card->lan_type) {
 default:
  LCS_DBF_TEXT(3, setup, "errinit");
  pr_err(" Initialization failed\n");
  goto out;
 }
 if (!dev)
  goto out;
 card->dev = dev;
 card->dev->ml_priv = card;
 card->dev->netdev_ops = &lcs_netdev_ops;
 card->dev->dev_port = card->portno;
 memcpy(card->dev->dev_addr, card->mac, LCS_MAC_LENGTH);




netdev_out:
 lcs_set_allowed_threads(card,0xffffffff);
 if (recover_state == DEV_STATE_RECOVER) {
  lcs_set_multicast_list(card->dev);
  card->dev->flags |= IFF_UP;
  netif_carrier_on(card->dev);
  netif_wake_queue(card->dev);
  card->state = DEV_STATE_UP;
 } else {
  lcs_stopcard(card);
 }

 if (lcs_register_netdev(ccwgdev) != 0)
  goto out;


 pr_info("LCS device %s %s IPv6 support\n", card->dev->name,
  (card->ip_assists_supported & LCS_IPASS_IPV6_SUPPORT) ?
  "with" : "without");

 pr_info("LCS device %s %s Multicast support\n", card->dev->name,
  (card->ip_assists_supported & LCS_IPASS_MULTICAST_SUPPORT) ?
  "with" : "without");
 return 0;
out:

 ccw_device_set_offline(card->write.ccwdev);
out_werr:
 ccw_device_set_offline(card->read.ccwdev);
out_err:
 return -ENODEV;
}
