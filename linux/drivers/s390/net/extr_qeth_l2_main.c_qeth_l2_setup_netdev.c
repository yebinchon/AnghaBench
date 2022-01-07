
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct qeth_hdr_tso {int dummy; } ;
struct qeth_hdr {int dummy; } ;
struct qeth_card {TYPE_1__* dev; int napi; } ;
struct TYPE_5__ {int needed_headroom; int features; int hw_features; int vlan_features; int * netdev_ops; int priv_flags; int flags; } ;


 int IFF_NOARP ;
 int IFF_UNICAST_FLT ;
 int IPA_INBOUND_CHECKSUM ;
 int IPA_INBOUND_CHECKSUM_V6 ;
 int IPA_OUTBOUND_CHECKSUM ;
 int IPA_OUTBOUND_CHECKSUM_V6 ;
 int IPA_OUTBOUND_TSO ;
 scalar_t__ IS_OSD (struct qeth_card*) ;
 scalar_t__ IS_OSM (struct qeth_card*) ;
 scalar_t__ IS_OSN (struct qeth_card*) ;
 int IS_VM_NIC (struct qeth_card*) ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int NETIF_F_VLAN_CHALLENGED ;
 int PAGE_SIZE ;
 int QDIO_MAX_ELEMENTS_PER_BUFFER ;
 int QETH_NAPI_WEIGHT ;
 int netif_carrier_on (TYPE_1__*) ;
 int netif_napi_add (TYPE_1__*,int *,int ,int ) ;
 int netif_set_gso_max_size (TYPE_1__*,int) ;
 scalar_t__ qeth_is_supported (struct qeth_card*,int ) ;
 scalar_t__ qeth_is_supported6 (struct qeth_card*,int ) ;
 int qeth_l2_netdev_ops ;
 int qeth_osn_netdev_ops ;
 int qeth_poll ;
 int register_netdev (TYPE_1__*) ;

__attribute__((used)) static int qeth_l2_setup_netdev(struct qeth_card *card, bool carrier_ok)
{
 int rc;

 if (IS_OSN(card)) {
  card->dev->netdev_ops = &qeth_osn_netdev_ops;
  card->dev->flags |= IFF_NOARP;
  goto add_napi;
 }

 card->dev->needed_headroom = sizeof(struct qeth_hdr);
 card->dev->netdev_ops = &qeth_l2_netdev_ops;
 card->dev->priv_flags |= IFF_UNICAST_FLT;

 if (IS_OSM(card)) {
  card->dev->features |= NETIF_F_VLAN_CHALLENGED;
 } else {
  if (!IS_VM_NIC(card))
   card->dev->hw_features |= NETIF_F_HW_VLAN_CTAG_FILTER;
  card->dev->features |= NETIF_F_HW_VLAN_CTAG_FILTER;
 }

 if (IS_OSD(card) && !IS_VM_NIC(card)) {
  card->dev->features |= NETIF_F_SG;

  if (qeth_is_supported(card, IPA_OUTBOUND_CHECKSUM)) {
   card->dev->hw_features |= NETIF_F_IP_CSUM;
   card->dev->vlan_features |= NETIF_F_IP_CSUM;
  }
 }
 if (qeth_is_supported6(card, IPA_OUTBOUND_CHECKSUM_V6)) {
  card->dev->hw_features |= NETIF_F_IPV6_CSUM;
  card->dev->vlan_features |= NETIF_F_IPV6_CSUM;
 }
 if (qeth_is_supported(card, IPA_INBOUND_CHECKSUM) ||
     qeth_is_supported6(card, IPA_INBOUND_CHECKSUM_V6)) {
  card->dev->hw_features |= NETIF_F_RXCSUM;
  card->dev->vlan_features |= NETIF_F_RXCSUM;
 }
 if (qeth_is_supported(card, IPA_OUTBOUND_TSO)) {
  card->dev->hw_features |= NETIF_F_TSO;
  card->dev->vlan_features |= NETIF_F_TSO;
 }
 if (qeth_is_supported6(card, IPA_OUTBOUND_TSO)) {
  card->dev->hw_features |= NETIF_F_TSO6;
  card->dev->vlan_features |= NETIF_F_TSO6;
 }

 if (card->dev->hw_features & (NETIF_F_TSO | NETIF_F_TSO6)) {
  card->dev->needed_headroom = sizeof(struct qeth_hdr_tso);
  netif_set_gso_max_size(card->dev,
           PAGE_SIZE * (QDIO_MAX_ELEMENTS_PER_BUFFER - 1));
 }

add_napi:
 netif_napi_add(card->dev, &card->napi, qeth_poll, QETH_NAPI_WEIGHT);
 rc = register_netdev(card->dev);
 if (!rc && carrier_ok)
  netif_carrier_on(card->dev);

 if (rc)
  card->dev->netdev_ops = ((void*)0);
 return rc;
}
