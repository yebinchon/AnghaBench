
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int dev; } ;


 int IPA_CMD_ASS_START ;
 int IPA_IPV6 ;
 int IPA_PASSTHRU ;
 scalar_t__ IS_IQD (struct qeth_card*) ;
 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int dev_err (int *,char*,int ) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,int ) ;
 int qeth_send_simple_setassparms (struct qeth_card*,int ,int ,int*) ;
 int qeth_send_simple_setassparms_v6 (struct qeth_card*,int ,int ,int *) ;

__attribute__((used)) static int qeth_l3_softsetup_ipv6(struct qeth_card *card)
{
 u32 ipv6_data = 3;
 int rc;

 QETH_CARD_TEXT(card, 3, "softipv6");

 if (IS_IQD(card))
  goto out;

 rc = qeth_send_simple_setassparms(card, IPA_IPV6, IPA_CMD_ASS_START,
       &ipv6_data);
 if (rc) {
  dev_err(&card->gdev->dev,
   "Activating IPv6 support for %s failed\n",
   QETH_CARD_IFNAME(card));
  return rc;
 }
 rc = qeth_send_simple_setassparms_v6(card, IPA_IPV6, IPA_CMD_ASS_START,
          ((void*)0));
 if (rc) {
  dev_err(&card->gdev->dev,
   "Activating IPv6 support for %s failed\n",
    QETH_CARD_IFNAME(card));
  return rc;
 }
 rc = qeth_send_simple_setassparms_v6(card, IPA_PASSTHRU,
          IPA_CMD_ASS_START, ((void*)0));
 if (rc) {
  dev_warn(&card->gdev->dev,
   "Enabling the passthrough mode for %s failed\n",
   QETH_CARD_IFNAME(card));
  return rc;
 }
out:
 dev_info(&card->gdev->dev, "IPV6 enabled\n");
 return 0;
}
