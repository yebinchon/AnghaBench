#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* mask; void* addr; } ;
struct TYPE_5__ {TYPE_1__ a4; } ;
struct qeth_ipaddr {TYPE_2__ u; } ;
struct qeth_card {int dummy; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct in_ifaddr {int /*<<< orphan*/  ifa_mask; int /*<<< orphan*/  ifa_address; TYPE_3__* ifa_dev; } ;
struct TYPE_6__ {struct net_device* dev; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_IP_TYPE_NORMAL ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 struct qeth_card* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct qeth_card*,struct qeth_ipaddr*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_ipaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *this,
			    unsigned long event, void *ptr)
{

	struct in_ifaddr *ifa = (struct in_ifaddr *)ptr;
	struct net_device *dev = ifa->ifa_dev->dev;
	struct qeth_ipaddr addr;
	struct qeth_card *card;

	if (FUNC2(dev) != &init_net)
		return NOTIFY_DONE;

	card = FUNC3(dev);
	if (!card)
		return NOTIFY_DONE;
	FUNC0(card, 3, "ipevent");

	FUNC5(&addr, QETH_IP_TYPE_NORMAL, QETH_PROT_IPV4);
	addr.u.a4.addr = FUNC1(ifa->ifa_address);
	addr.u.a4.mask = FUNC1(ifa->ifa_mask);

	return FUNC4(card, &addr, event);
}