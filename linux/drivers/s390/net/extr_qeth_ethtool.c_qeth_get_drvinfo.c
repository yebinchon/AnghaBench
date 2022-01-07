
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* mcl_level; } ;
struct qeth_card {TYPE_1__ info; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* CARD_DDEV_ID (struct qeth_card*) ;
 char* CARD_RDEV_ID (struct qeth_card*) ;
 char* CARD_WDEV_ID (struct qeth_card*) ;
 scalar_t__ IS_LAYER2 (struct qeth_card*) ;
 int snprintf (int ,int,char*,char*,char*,char*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void qeth_get_drvinfo(struct net_device *dev,
        struct ethtool_drvinfo *info)
{
 struct qeth_card *card = dev->ml_priv;

 strlcpy(info->driver, IS_LAYER2(card) ? "qeth_l2" : "qeth_l3",
  sizeof(info->driver));
 strlcpy(info->version, "1.0", sizeof(info->version));
 strlcpy(info->fw_version, card->info.mcl_level,
  sizeof(info->fw_version));
 snprintf(info->bus_info, sizeof(info->bus_info), "%s/%s/%s",
   CARD_RDEV_ID(card), CARD_WDEV_ID(card), CARD_DDEV_ID(card));
}
