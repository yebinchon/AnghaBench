#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pfxlen; int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {TYPE_2__ a6; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct qeth_l3_ip_event_work {int /*<<< orphan*/  work; TYPE_4__ addr; struct qeth_card* card; } ;
struct qeth_card {int /*<<< orphan*/  cmd_wq; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct inet6_ifaddr {int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  addr; TYPE_1__* idev; } ;
struct TYPE_5__ {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPA_IPV6 ; 
 unsigned long NETDEV_DOWN ; 
 unsigned long NETDEV_UP ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_IP_TYPE_NORMAL ; 
 int /*<<< orphan*/  QETH_PROT_IPV6 ; 
 struct qeth_l3_ip_event_work* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_l3_add_ip_worker ; 
 int /*<<< orphan*/  qeth_l3_delete_ip_worker ; 
 struct qeth_card* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct notifier_block *this,
			     unsigned long event, void *ptr)
{
	struct inet6_ifaddr *ifa = (struct inet6_ifaddr *)ptr;
	struct net_device *dev = ifa->idev->dev;
	struct qeth_l3_ip_event_work *ip_work;
	struct qeth_card *card;

	if (event != NETDEV_UP && event != NETDEV_DOWN)
		return NOTIFY_DONE;

	card = FUNC4(dev);
	if (!card)
		return NOTIFY_DONE;
	FUNC1(card, 3, "ip6event");
	if (!FUNC3(card, IPA_IPV6))
		return NOTIFY_DONE;

	ip_work = FUNC2(sizeof(*ip_work), GFP_ATOMIC);
	if (!ip_work)
		return NOTIFY_DONE;

	if (event == NETDEV_UP)
		FUNC0(&ip_work->work, qeth_l3_add_ip_worker);
	else
		FUNC0(&ip_work->work, qeth_l3_delete_ip_worker);

	ip_work->card = card;
	FUNC5(&ip_work->addr, QETH_IP_TYPE_NORMAL,
			    QETH_PROT_IPV6);
	ip_work->addr.u.a6.addr = ifa->addr;
	ip_work->addr.u.a6.pfxlen = ifa->prefix_len;

	FUNC6(card->cmd_wq, &ip_work->work);
	return NOTIFY_OK;
}