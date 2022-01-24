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
struct TYPE_5__ {char addr; } ;
struct TYPE_4__ {char addr; } ;
struct TYPE_6__ {TYPE_2__ a6; TYPE_1__ a4; } ;
struct qeth_ipaddr {scalar_t__ type; scalar_t__ proto; scalar_t__ ref_counter; int /*<<< orphan*/  hnode; scalar_t__ in_progress; TYPE_3__ u; } ;
struct qeth_card {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 scalar_t__ QETH_IP_TYPE_NORMAL ; 
 scalar_t__ QETH_IP_TYPE_RXIP ; 
 scalar_t__ QETH_IP_TYPE_VIPA ; 
 scalar_t__ QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_ipaddr*) ; 
 scalar_t__ FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_ipaddr*,struct qeth_ipaddr*) ; 
 int FUNC6 (struct qeth_card*,struct qeth_ipaddr*) ; 
 struct qeth_ipaddr* FUNC7 (struct qeth_card*,struct qeth_ipaddr*) ; 

__attribute__((used)) static int FUNC8(struct qeth_card *card,
			     struct qeth_ipaddr *tmp_addr)
{
	int rc = 0;
	struct qeth_ipaddr *addr;

	if (tmp_addr->type == QETH_IP_TYPE_RXIP)
		FUNC1(card, 2, "delrxip");
	else if (tmp_addr->type == QETH_IP_TYPE_VIPA)
		FUNC1(card, 2, "delvipa");
	else
		FUNC1(card, 2, "delip");

	if (tmp_addr->proto == QETH_PROT_IPV4)
		FUNC0(card, 4, &tmp_addr->u.a4.addr, 4);
	else {
		FUNC0(card, 4, &tmp_addr->u.a6.addr, 8);
		FUNC0(card, 4, ((char *)&tmp_addr->u.a6.addr) + 8, 8);
	}

	addr = FUNC7(card, tmp_addr);
	if (!addr || !FUNC5(addr, tmp_addr))
		return -ENOENT;

	addr->ref_counter--;
	if (addr->type == QETH_IP_TYPE_NORMAL && addr->ref_counter > 0)
		return rc;
	if (addr->in_progress)
		return -EINPROGRESS;

	if (FUNC4(card))
		rc = FUNC6(card, addr);

	FUNC2(&addr->hnode);
	FUNC3(addr);

	return rc;
}