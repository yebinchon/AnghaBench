#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qeth_hdr_tso {int dummy; } ;
struct qeth_hdr {int dummy; } ;
struct qeth_card {TYPE_1__* dev; int /*<<< orphan*/  napi; } ;
struct TYPE_5__ {int needed_headroom; int features; int hw_features; int vlan_features; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_NOARP ; 
 int /*<<< orphan*/  IFF_UNICAST_FLT ; 
 int /*<<< orphan*/  IPA_INBOUND_CHECKSUM ; 
 int /*<<< orphan*/  IPA_INBOUND_CHECKSUM_V6 ; 
 int /*<<< orphan*/  IPA_OUTBOUND_CHECKSUM ; 
 int /*<<< orphan*/  IPA_OUTBOUND_CHECKSUM_V6 ; 
 int /*<<< orphan*/  IPA_OUTBOUND_TSO ; 
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 scalar_t__ FUNC2 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
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
 int /*<<< orphan*/  QETH_NAPI_WEIGHT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_l2_netdev_ops ; 
 int /*<<< orphan*/  qeth_osn_netdev_ops ; 
 int /*<<< orphan*/  qeth_poll ; 
 int FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(struct qeth_card *card, bool carrier_ok)
{
	int rc;

	if (FUNC2(card)) {
		card->dev->netdev_ops = &qeth_osn_netdev_ops;
		card->dev->flags |= IFF_NOARP;
		goto add_napi;
	}

	card->dev->needed_headroom = sizeof(struct qeth_hdr);
	card->dev->netdev_ops = &qeth_l2_netdev_ops;
	card->dev->priv_flags |= IFF_UNICAST_FLT;

	if (FUNC1(card)) {
		card->dev->features |= NETIF_F_VLAN_CHALLENGED;
	} else {
		if (!FUNC3(card))
			card->dev->hw_features |= NETIF_F_HW_VLAN_CTAG_FILTER;
		card->dev->features |= NETIF_F_HW_VLAN_CTAG_FILTER;
	}

	if (FUNC0(card) && !FUNC3(card)) {
		card->dev->features |= NETIF_F_SG;
		/* OSA 3S and earlier has no RX/TX support */
		if (FUNC7(card, IPA_OUTBOUND_CHECKSUM)) {
			card->dev->hw_features |= NETIF_F_IP_CSUM;
			card->dev->vlan_features |= NETIF_F_IP_CSUM;
		}
	}
	if (FUNC8(card, IPA_OUTBOUND_CHECKSUM_V6)) {
		card->dev->hw_features |= NETIF_F_IPV6_CSUM;
		card->dev->vlan_features |= NETIF_F_IPV6_CSUM;
	}
	if (FUNC7(card, IPA_INBOUND_CHECKSUM) ||
	    FUNC8(card, IPA_INBOUND_CHECKSUM_V6)) {
		card->dev->hw_features |= NETIF_F_RXCSUM;
		card->dev->vlan_features |= NETIF_F_RXCSUM;
	}
	if (FUNC7(card, IPA_OUTBOUND_TSO)) {
		card->dev->hw_features |= NETIF_F_TSO;
		card->dev->vlan_features |= NETIF_F_TSO;
	}
	if (FUNC8(card, IPA_OUTBOUND_TSO)) {
		card->dev->hw_features |= NETIF_F_TSO6;
		card->dev->vlan_features |= NETIF_F_TSO6;
	}

	if (card->dev->hw_features & (NETIF_F_TSO | NETIF_F_TSO6)) {
		card->dev->needed_headroom = sizeof(struct qeth_hdr_tso);
		FUNC6(card->dev,
				       PAGE_SIZE * (QDIO_MAX_ELEMENTS_PER_BUFFER - 1));
	}

add_napi:
	FUNC5(card->dev, &card->napi, qeth_poll, QETH_NAPI_WEIGHT);
	rc = FUNC9(card->dev);
	if (!rc && carrier_ok)
		FUNC4(card->dev);

	if (rc)
		card->dev->netdev_ops = NULL;
	return rc;
}