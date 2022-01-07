
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mac_bits; } ;
struct qeth_card {TYPE_1__ info; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int EPERM ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_LAYER2_MAC_REGISTERED ;
 int eth_validate_addr (struct net_device*) ;

__attribute__((used)) static int qeth_l2_validate_addr(struct net_device *dev)
{
 struct qeth_card *card = dev->ml_priv;

 if (card->info.mac_bits & QETH_LAYER2_MAC_REGISTERED)
  return eth_validate_addr(dev);

 QETH_CARD_TEXT(card, 4, "nomacadr");
 return -EPERM;
}
