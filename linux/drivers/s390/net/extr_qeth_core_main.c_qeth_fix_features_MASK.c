#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qeth_card {int dummy; } ;
struct net_device {struct qeth_card* ml_priv; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;
typedef  int /*<<< orphan*/  features ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_INBOUND_CHECKSUM ; 
 int /*<<< orphan*/  IPA_INBOUND_CHECKSUM_V6 ; 
 int /*<<< orphan*/  IPA_OUTBOUND_CHECKSUM ; 
 int /*<<< orphan*/  IPA_OUTBOUND_CHECKSUM_V6 ; 
 int /*<<< orphan*/  IPA_OUTBOUND_TSO ; 
 int /*<<< orphan*/  NETIF_F_IPV6_CSUM ; 
 int /*<<< orphan*/  NETIF_F_IP_CSUM ; 
 int /*<<< orphan*/  NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  NETIF_F_TSO ; 
 int /*<<< orphan*/  NETIF_F_TSO6 ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 

netdev_features_t FUNC4(struct net_device *dev,
				    netdev_features_t features)
{
	struct qeth_card *card = dev->ml_priv;

	FUNC1(card, 2, "fixfeat");
	if (!FUNC2(card, IPA_OUTBOUND_CHECKSUM))
		features &= ~NETIF_F_IP_CSUM;
	if (!FUNC3(card, IPA_OUTBOUND_CHECKSUM_V6))
		features &= ~NETIF_F_IPV6_CSUM;
	if (!FUNC2(card, IPA_INBOUND_CHECKSUM) &&
	    !FUNC3(card, IPA_INBOUND_CHECKSUM_V6))
		features &= ~NETIF_F_RXCSUM;
	if (!FUNC2(card, IPA_OUTBOUND_TSO))
		features &= ~NETIF_F_TSO;
	if (!FUNC3(card, IPA_OUTBOUND_TSO))
		features &= ~NETIF_F_TSO6;

	FUNC0(card, 2, &features, sizeof(features));
	return features;
}