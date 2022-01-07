
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;


 int EIO ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int qeth_l3_start_ipa_arp_processing (struct qeth_card*) ;
 int qeth_l3_start_ipa_broadcast (struct qeth_card*) ;
 int qeth_l3_start_ipa_ipv6 (struct qeth_card*) ;
 int qeth_l3_start_ipa_multicast (struct qeth_card*) ;
 int qeth_l3_start_ipa_source_mac (struct qeth_card*) ;
 int qeth_l3_start_ipa_vlan (struct qeth_card*) ;
 scalar_t__ qeth_set_access_ctrl_online (struct qeth_card*,int ) ;

__attribute__((used)) static int qeth_l3_start_ipassists(struct qeth_card *card)
{
 QETH_CARD_TEXT(card, 3, "strtipas");

 if (qeth_set_access_ctrl_online(card, 0))
  return -EIO;
 qeth_l3_start_ipa_arp_processing(card);
 qeth_l3_start_ipa_source_mac(card);
 qeth_l3_start_ipa_vlan(card);
 qeth_l3_start_ipa_multicast(card);
 qeth_l3_start_ipa_ipv6(card);
 qeth_l3_start_ipa_broadcast(card);
 return 0;
}
