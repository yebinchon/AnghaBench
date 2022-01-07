
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
struct net_device {int features; struct qeth_card* ml_priv; } ;
typedef int netdev_features_t ;
typedef int features ;


 int EIO ;
 int IPA_OUTBOUND_CHECKSUM ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int QETH_CARD_HEX (struct qeth_card*,int,int*,int) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_PROT_IPV4 ;
 int QETH_PROT_IPV6 ;
 int qeth_set_ipa_csum (struct qeth_card*,int,int ,int ) ;
 int qeth_set_ipa_rx_csum (struct qeth_card*,int) ;
 int qeth_set_ipa_tso (struct qeth_card*,int,int ) ;

int qeth_set_features(struct net_device *dev, netdev_features_t features)
{
 struct qeth_card *card = dev->ml_priv;
 netdev_features_t changed = dev->features ^ features;
 int rc = 0;

 QETH_CARD_TEXT(card, 2, "setfeat");
 QETH_CARD_HEX(card, 2, &features, sizeof(features));

 if ((changed & NETIF_F_IP_CSUM)) {
  rc = qeth_set_ipa_csum(card, features & NETIF_F_IP_CSUM,
           IPA_OUTBOUND_CHECKSUM, QETH_PROT_IPV4);
  if (rc)
   changed ^= NETIF_F_IP_CSUM;
 }
 if (changed & NETIF_F_IPV6_CSUM) {
  rc = qeth_set_ipa_csum(card, features & NETIF_F_IPV6_CSUM,
           IPA_OUTBOUND_CHECKSUM, QETH_PROT_IPV6);
  if (rc)
   changed ^= NETIF_F_IPV6_CSUM;
 }
 if (changed & NETIF_F_RXCSUM) {
  rc = qeth_set_ipa_rx_csum(card, features & NETIF_F_RXCSUM);
  if (rc)
   changed ^= NETIF_F_RXCSUM;
 }
 if (changed & NETIF_F_TSO) {
  rc = qeth_set_ipa_tso(card, features & NETIF_F_TSO,
          QETH_PROT_IPV4);
  if (rc)
   changed ^= NETIF_F_TSO;
 }
 if (changed & NETIF_F_TSO6) {
  rc = qeth_set_ipa_tso(card, features & NETIF_F_TSO6,
          QETH_PROT_IPV6);
  if (rc)
   changed ^= NETIF_F_TSO6;
 }


 if ((dev->features ^ features) == changed)
  return 0;

 dev->features ^= changed;
 return -EIO;
}
