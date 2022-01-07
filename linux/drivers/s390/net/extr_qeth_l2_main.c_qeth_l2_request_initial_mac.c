
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {TYPE_1__* dev; } ;
struct TYPE_2__ {int addr_len; int dev_addr; } ;


 int CARD_DEVID (struct qeth_card*) ;
 int EADDRNOTAVAIL ;
 scalar_t__ IS_OSM (struct qeth_card*) ;
 int IS_OSN (struct qeth_card*) ;
 scalar_t__ IS_OSX (struct qeth_card*) ;
 scalar_t__ MACHINE_IS_VM ;
 int QETH_CARD_HEX (struct qeth_card*,int,int ,int ) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int QETH_DBF_MESSAGE (int,char*,int ,int) ;
 int eth_hw_addr_random (TYPE_1__*) ;
 int qeth_setadpparms_change_macaddr (struct qeth_card*) ;
 int qeth_vm_request_mac (struct qeth_card*) ;

__attribute__((used)) static int qeth_l2_request_initial_mac(struct qeth_card *card)
{
 int rc = 0;

 QETH_CARD_TEXT(card, 2, "l2reqmac");

 if (MACHINE_IS_VM) {
  rc = qeth_vm_request_mac(card);
  if (!rc)
   goto out;
  QETH_DBF_MESSAGE(2, "z/VM MAC Service failed on device %x: %#x\n",
     CARD_DEVID(card), rc);
  QETH_CARD_TEXT_(card, 2, "err%04x", rc);

 }

 if (!IS_OSN(card)) {
  rc = qeth_setadpparms_change_macaddr(card);
  if (!rc)
   goto out;
  QETH_DBF_MESSAGE(2, "READ_MAC Assist failed on device %x: %#x\n",
     CARD_DEVID(card), rc);
  QETH_CARD_TEXT_(card, 2, "1err%04x", rc);

 }


 if (IS_OSM(card) || IS_OSX(card))
  return (rc) ? rc : -EADDRNOTAVAIL;
 eth_hw_addr_random(card->dev);

out:
 QETH_CARD_HEX(card, 2, card->dev->dev_addr, card->dev->addr_len);
 return 0;
}
