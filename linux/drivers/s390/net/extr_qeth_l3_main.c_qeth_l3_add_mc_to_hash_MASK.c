#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* addr; } ;
struct TYPE_4__ {TYPE_1__ a4; } ;
struct qeth_ipaddr {int is_multicast; int /*<<< orphan*/  hnode; int /*<<< orphan*/  disp_flag; TYPE_2__ u; int /*<<< orphan*/  mac; } ;
struct qeth_card {int /*<<< orphan*/  ip_mc_htable; } ;
struct ip_mc_list {int /*<<< orphan*/  multiaddr; int /*<<< orphan*/  next_rcu; } ;
struct in_device {int /*<<< orphan*/  mc_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_DISP_ADDR_ADD ; 
 int /*<<< orphan*/  QETH_DISP_ADDR_DO_NOTHING ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_ipaddr*) ; 
 struct qeth_ipaddr* FUNC6 (struct qeth_card*,struct qeth_ipaddr*) ; 
 struct qeth_ipaddr* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_ipaddr*) ; 
 struct ip_mc_list* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct qeth_card *card, struct in_device *in4_dev)
{
	struct ip_mc_list *im4;
	struct qeth_ipaddr *tmp, *ipm;

	FUNC0(card, 4, "addmc");

	tmp = FUNC7(QETH_PROT_IPV4);
	if (!tmp)
		return;

	for (im4 = FUNC9(in4_dev->mc_list); im4 != NULL;
	     im4 = FUNC9(im4->next_rcu)) {
		FUNC4(im4->multiaddr, tmp->mac);
		tmp->u.a4.addr = FUNC1(im4->multiaddr);
		tmp->is_multicast = 1;

		ipm = FUNC6(card, tmp);
		if (ipm) {
			/* for mcast, by-IP match means full match */
			ipm->disp_flag = QETH_DISP_ADDR_DO_NOTHING;
		} else {
			ipm = FUNC7(QETH_PROT_IPV4);
			if (!ipm)
				continue;
			FUNC2(ipm->mac, tmp->mac);
			ipm->u.a4.addr = FUNC1(im4->multiaddr);
			ipm->is_multicast = 1;
			ipm->disp_flag = QETH_DISP_ADDR_ADD;
			FUNC3(card->ip_mc_htable,
					&ipm->hnode, FUNC8(ipm));
		}
	}

	FUNC5(tmp);
}