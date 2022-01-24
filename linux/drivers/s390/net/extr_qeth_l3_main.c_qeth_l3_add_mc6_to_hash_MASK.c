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
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {TYPE_1__ a6; } ;
struct qeth_ipaddr {int is_multicast; int /*<<< orphan*/  hnode; int /*<<< orphan*/  disp_flag; TYPE_2__ u; int /*<<< orphan*/  mac; } ;
struct qeth_card {int /*<<< orphan*/  ip_mc_htable; } ;
struct inet6_dev {struct ifmcaddr6* mc_list; } ;
struct in6_addr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  s6_addr; } ;
struct ifmcaddr6 {TYPE_3__ mca_addr; struct ifmcaddr6* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_DISP_ADDR_ADD ; 
 int /*<<< orphan*/  QETH_DISP_ADDR_DO_NOTHING ; 
 int /*<<< orphan*/  QETH_PROT_IPV6 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_ipaddr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct qeth_ipaddr* FUNC6 (struct qeth_card*,struct qeth_ipaddr*) ; 
 struct qeth_ipaddr* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_ipaddr*) ; 

__attribute__((used)) static void FUNC9(struct qeth_card *card,
				    struct inet6_dev *in6_dev)
{
	struct qeth_ipaddr *ipm;
	struct ifmcaddr6 *im6;
	struct qeth_ipaddr *tmp;

	FUNC0(card, 4, "addmc6");

	tmp = FUNC7(QETH_PROT_IPV6);
	if (!tmp)
		return;

	for (im6 = in6_dev->mc_list; im6 != NULL; im6 = im6->next) {
		FUNC3(&im6->mca_addr, tmp->mac);
		FUNC5(&tmp->u.a6.addr, &im6->mca_addr.s6_addr,
		       sizeof(struct in6_addr));
		tmp->is_multicast = 1;

		ipm = FUNC6(card, tmp);
		if (ipm) {
			/* for mcast, by-IP match means full match */
			ipm->disp_flag = QETH_DISP_ADDR_DO_NOTHING;
			continue;
		}

		ipm = FUNC7(QETH_PROT_IPV6);
		if (!ipm)
			continue;

		FUNC1(ipm->mac, tmp->mac);
		FUNC5(&ipm->u.a6.addr, &im6->mca_addr.s6_addr,
		       sizeof(struct in6_addr));
		ipm->is_multicast = 1;
		ipm->disp_flag = QETH_DISP_ADDR_ADD;
		FUNC2(card->ip_mc_htable,
				&ipm->hnode, FUNC8(ipm));

	}
	FUNC4(tmp);
}