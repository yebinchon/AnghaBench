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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {char addr; } ;
struct TYPE_5__ {char addr; } ;
struct TYPE_7__ {TYPE_2__ a6; TYPE_1__ a4; } ;
struct qeth_ipaddr {scalar_t__ type; scalar_t__ proto; int ref_counter; int ipato; int in_progress; int /*<<< orphan*/  hnode; int /*<<< orphan*/  disp_flag; TYPE_3__ u; } ;
struct qeth_card {int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_htable; TYPE_4__* gdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int ENETDOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_DISP_ADDR_ADD ; 
 int /*<<< orphan*/  QETH_DISP_ADDR_DO_NOTHING ; 
 scalar_t__ QETH_IP_TYPE_NORMAL ; 
 scalar_t__ QETH_IP_TYPE_RXIP ; 
 scalar_t__ QETH_IP_TYPE_VIPA ; 
 scalar_t__ QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_ipaddr*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_ipaddr*,struct qeth_ipaddr*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct qeth_card*) ; 
 scalar_t__ FUNC10 (struct qeth_ipaddr*,struct qeth_ipaddr*) ; 
 int /*<<< orphan*/  FUNC11 (struct qeth_card*,struct qeth_ipaddr*) ; 
 struct qeth_ipaddr* FUNC12 (struct qeth_card*,struct qeth_ipaddr*) ; 
 struct qeth_ipaddr* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct qeth_ipaddr*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC16 (struct qeth_card*,struct qeth_ipaddr*) ; 
 int FUNC17 (struct qeth_card*,struct qeth_ipaddr*) ; 

__attribute__((used)) static int FUNC18(struct qeth_card *card, struct qeth_ipaddr *tmp_addr)
{
	int rc = 0;
	struct qeth_ipaddr *addr;
	char buf[40];

	if (tmp_addr->type == QETH_IP_TYPE_RXIP)
		FUNC1(card, 2, "addrxip");
	else if (tmp_addr->type == QETH_IP_TYPE_VIPA)
		FUNC1(card, 2, "addvipa");
	else
		FUNC1(card, 2, "addip");

	if (tmp_addr->proto == QETH_PROT_IPV4)
		FUNC0(card, 4, &tmp_addr->u.a4.addr, 4);
	else {
		FUNC0(card, 4, &tmp_addr->u.a6.addr, 8);
		FUNC0(card, 4, ((char *)&tmp_addr->u.a6.addr) + 8, 8);
	}

	addr = FUNC12(card, tmp_addr);
	if (addr) {
		if (tmp_addr->type != QETH_IP_TYPE_NORMAL)
			return -EADDRINUSE;
		if (FUNC10(addr, tmp_addr)) {
			addr->ref_counter++;
			return 0;
		}
		FUNC15(tmp_addr->proto, (u8 *)&tmp_addr->u,
					 buf);
		FUNC2(&card->gdev->dev,
			 "Registering IP address %s failed\n", buf);
		return -EADDRINUSE;
	} else {
		addr = FUNC13(tmp_addr->proto);
		if (!addr)
			return -ENOMEM;

		FUNC6(addr, tmp_addr, sizeof(struct qeth_ipaddr));
		addr->ref_counter = 1;

		if (FUNC16(card, addr)) {
			FUNC1(card, 2, "tkovaddr");
			addr->ipato = 1;
		}
		FUNC3(card->ip_htable, &addr->hnode,
				FUNC14(addr));

		if (!FUNC9(card)) {
			addr->disp_flag = QETH_DISP_ADDR_ADD;
			return 0;
		}

		/* qeth_l3_register_addr_entry can go to sleep
		 * if we add a IPV4 addr. It is caused by the reason
		 * that SETIP ipa cmd starts ARP staff for IPV4 addr.
		 * Thus we should unlock spinlock, and make a protection
		 * using in_progress variable to indicate that there is
		 * an hardware operation with this IPV4 address
		 */
		if (addr->proto == QETH_PROT_IPV4) {
			addr->in_progress = 1;
			FUNC8(&card->ip_lock);
			rc = FUNC17(card, addr);
			FUNC7(&card->ip_lock);
			addr->in_progress = 0;
		} else
			rc = FUNC17(card, addr);

		if (!rc || rc == -EADDRINUSE || rc == -ENETDOWN) {
			addr->disp_flag = QETH_DISP_ADDR_DO_NOTHING;
			if (addr->ref_counter < 1) {
				FUNC11(card, addr);
				FUNC4(&addr->hnode);
				FUNC5(addr);
			}
		} else {
			FUNC4(&addr->hnode);
			FUNC5(addr);
		}
	}
	return rc;
}