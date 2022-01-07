
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mac_bits; } ;
struct qeth_card {TYPE_2__ info; TYPE_1__* dev; } ;
struct TYPE_3__ {int dev_addr; } ;


 int IS_OSN (struct qeth_card*) ;
 int QETH_LAYER2_MAC_REGISTERED ;
 int is_valid_ether_addr (int ) ;
 int qeth_l2_request_initial_mac (struct qeth_card*) ;
 int qeth_l2_send_setmac (struct qeth_card*,int ) ;

__attribute__((used)) static void qeth_l2_register_dev_addr(struct qeth_card *card)
{
 if (!is_valid_ether_addr(card->dev->dev_addr))
  qeth_l2_request_initial_mac(card);

 if (!IS_OSN(card) && !qeth_l2_send_setmac(card, card->dev->dev_addr))
  card->info.mac_bits |= QETH_LAYER2_MAC_REGISTERED;
}
