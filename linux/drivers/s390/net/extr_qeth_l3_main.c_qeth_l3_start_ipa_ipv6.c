
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int dev; } ;


 int IPA_IPV6 ;
 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int dev_info (int *,char*,int ) ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_softsetup_ipv6 (struct qeth_card*) ;

__attribute__((used)) static int qeth_l3_start_ipa_ipv6(struct qeth_card *card)
{
 QETH_CARD_TEXT(card, 3, "strtipv6");

 if (!qeth_is_supported(card, IPA_IPV6)) {
  dev_info(&card->gdev->dev,
   "IPv6 not supported on %s\n", QETH_CARD_IFNAME(card));
  return 0;
 }
 return qeth_l3_softsetup_ipv6(card);
}
