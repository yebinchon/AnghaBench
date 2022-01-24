#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct qeth_hdr_tso {int dummy; } ;
struct qeth_hdr {int dummy; } ;
struct TYPE_7__ {scalar_t__ link_type; int unique_id; } ;
struct qeth_card {TYPE_2__* dev; int /*<<< orphan*/  napi; TYPE_1__ info; } ;
struct TYPE_8__ {int dev_id; int features; int hw_features; int vlan_features; unsigned int needed_headroom; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENODEV ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  IFF_NOARP ; 
 int /*<<< orphan*/  IPA_OUTBOUND_CHECKSUM_V6 ; 
 int /*<<< orphan*/  IPA_OUTBOUND_TSO ; 
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 scalar_t__ FUNC2 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 int PAGE_SIZE ; 
 scalar_t__ QETH_LINK_TYPE_HSTR ; 
 scalar_t__ QETH_LINK_TYPE_LANE_TR ; 
 int FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  QETH_NAPI_WEIGHT ; 
 int UNIQUE_ID_NOT_BY_CARD ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct qeth_card*) ; 
 int FUNC12 (struct qeth_card*) ; 
 int /*<<< orphan*/  qeth_l3_netdev_ops ; 
 int /*<<< orphan*/  qeth_l3_osa_netdev_ops ; 
 int /*<<< orphan*/  qeth_poll ; 
 int FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC14(struct qeth_card *card, bool carrier_ok)
{
	unsigned int headroom;
	int rc;

	if (FUNC1(card) || FUNC2(card)) {
		if ((card->info.link_type == QETH_LINK_TYPE_LANE_TR) ||
		    (card->info.link_type == QETH_LINK_TYPE_HSTR)) {
			FUNC9("qeth_l3: ignoring TR device\n");
			return -ENODEV;
		}

		card->dev->netdev_ops = &qeth_l3_osa_netdev_ops;

		/*IPv6 address autoconfiguration stuff*/
		FUNC11(card);
		if (!(card->info.unique_id & UNIQUE_ID_NOT_BY_CARD))
			card->dev->dev_id = card->info.unique_id & 0xffff;

		if (!FUNC3(card)) {
			card->dev->features |= NETIF_F_SG;
			card->dev->hw_features |= NETIF_F_TSO |
				NETIF_F_RXCSUM | NETIF_F_IP_CSUM;
			card->dev->vlan_features |= NETIF_F_TSO |
				NETIF_F_RXCSUM | NETIF_F_IP_CSUM;
		}

		if (FUNC10(card, IPA_OUTBOUND_CHECKSUM_V6)) {
			card->dev->hw_features |= NETIF_F_IPV6_CSUM;
			card->dev->vlan_features |= NETIF_F_IPV6_CSUM;
		}
		if (FUNC10(card, IPA_OUTBOUND_TSO)) {
			card->dev->hw_features |= NETIF_F_TSO6;
			card->dev->vlan_features |= NETIF_F_TSO6;
		}

		/* allow for de-acceleration of NETIF_F_HW_VLAN_CTAG_TX: */
		if (card->dev->hw_features & NETIF_F_TSO6)
			headroom = sizeof(struct qeth_hdr_tso) + VLAN_HLEN;
		else if (card->dev->hw_features & NETIF_F_TSO)
			headroom = sizeof(struct qeth_hdr_tso);
		else
			headroom = sizeof(struct qeth_hdr) + VLAN_HLEN;
	} else if (FUNC0(card)) {
		card->dev->flags |= IFF_NOARP;
		card->dev->netdev_ops = &qeth_l3_netdev_ops;
		headroom = sizeof(struct qeth_hdr) - ETH_HLEN;

		rc = FUNC12(card);
		if (rc)
			goto out;
	} else
		return -ENODEV;

	card->dev->needed_headroom = headroom;
	card->dev->features |=	NETIF_F_HW_VLAN_CTAG_TX |
				NETIF_F_HW_VLAN_CTAG_RX |
				NETIF_F_HW_VLAN_CTAG_FILTER;

	FUNC6(card->dev);
	if (card->dev->hw_features & (NETIF_F_TSO | NETIF_F_TSO6))
		FUNC8(card->dev,
				       PAGE_SIZE * (FUNC4(card) - 1));

	FUNC7(card->dev, &card->napi, qeth_poll, QETH_NAPI_WEIGHT);
	rc = FUNC13(card->dev);
	if (!rc && carrier_ok)
		FUNC5(card->dev);

out:
	if (rc)
		card->dev->netdev_ops = NULL;
	return rc;
}