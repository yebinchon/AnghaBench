#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr {int /*<<< orphan*/ * sa_data; } ;
struct TYPE_2__ {int mac_bits; } ;
struct qeth_card {TYPE_1__ info; } ;
struct net_device {int /*<<< orphan*/ * dev_addr; struct qeth_card* ml_priv; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EOPNOTSUPP ; 
 int ETH_ALEN ; 
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int,char*) ; 
 int QETH_LAYER2_MAC_REGISTERED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct qeth_card*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, void *p)
{
	struct sockaddr *addr = p;
	struct qeth_card *card = dev->ml_priv;
	u8 old_addr[ETH_ALEN];
	int rc = 0;

	FUNC3(card, 3, "setmac");

	if (FUNC0(card) || FUNC1(card)) {
		FUNC3(card, 3, "setmcTYP");
		return -EOPNOTSUPP;
	}
	FUNC2(card, 3, addr->sa_data, ETH_ALEN);
	if (!FUNC6(addr->sa_data))
		return -EADDRNOTAVAIL;

	/* don't register the same address twice */
	if (FUNC5(dev->dev_addr, addr->sa_data) &&
	    (card->info.mac_bits & QETH_LAYER2_MAC_REGISTERED))
		return 0;

	/* add the new address, switch over, drop the old */
	rc = FUNC8(card, addr->sa_data);
	if (rc)
		return rc;
	FUNC4(old_addr, dev->dev_addr);
	FUNC4(dev->dev_addr, addr->sa_data);

	if (card->info.mac_bits & QETH_LAYER2_MAC_REGISTERED)
		FUNC7(card, old_addr);
	card->info.mac_bits |= QETH_LAYER2_MAC_REGISTERED;
	return 0;
}