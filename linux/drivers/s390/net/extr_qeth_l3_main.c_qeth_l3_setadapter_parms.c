
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int dev; } ;


 int IPA_SETADP_ALTER_MAC_ADDRESS ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int dev_warn (int *,char*) ;
 scalar_t__ qeth_adp_supported (struct qeth_card*,int ) ;
 int qeth_setadpparms_change_macaddr (struct qeth_card*) ;

__attribute__((used)) static int qeth_l3_setadapter_parms(struct qeth_card *card)
{
 int rc = 0;

 QETH_CARD_TEXT(card, 2, "setadprm");

 if (qeth_adp_supported(card, IPA_SETADP_ALTER_MAC_ADDRESS)) {
  rc = qeth_setadpparms_change_macaddr(card);
  if (rc)
   dev_warn(&card->gdev->dev, "Reading the adapter MAC"
    " address failed\n");
 }

 return rc;
}
