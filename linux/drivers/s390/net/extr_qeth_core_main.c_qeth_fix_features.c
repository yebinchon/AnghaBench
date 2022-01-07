
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
struct net_device {struct qeth_card* ml_priv; } ;
typedef int netdev_features_t ;
typedef int features ;


 int IPA_INBOUND_CHECKSUM ;
 int IPA_INBOUND_CHECKSUM_V6 ;
 int IPA_OUTBOUND_CHECKSUM ;
 int IPA_OUTBOUND_CHECKSUM_V6 ;
 int IPA_OUTBOUND_TSO ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int QETH_CARD_HEX (struct qeth_card*,int,int *,int) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_is_supported6 (struct qeth_card*,int ) ;

netdev_features_t qeth_fix_features(struct net_device *dev,
        netdev_features_t features)
{
 struct qeth_card *card = dev->ml_priv;

 QETH_CARD_TEXT(card, 2, "fixfeat");
 if (!qeth_is_supported(card, IPA_OUTBOUND_CHECKSUM))
  features &= ~NETIF_F_IP_CSUM;
 if (!qeth_is_supported6(card, IPA_OUTBOUND_CHECKSUM_V6))
  features &= ~NETIF_F_IPV6_CSUM;
 if (!qeth_is_supported(card, IPA_INBOUND_CHECKSUM) &&
     !qeth_is_supported6(card, IPA_INBOUND_CHECKSUM_V6))
  features &= ~NETIF_F_RXCSUM;
 if (!qeth_is_supported(card, IPA_OUTBOUND_TSO))
  features &= ~NETIF_F_TSO;
 if (!qeth_is_supported6(card, IPA_OUTBOUND_TSO))
  features &= ~NETIF_F_TSO6;

 QETH_CARD_HEX(card, 2, &features, sizeof(features));
 return features;
}
