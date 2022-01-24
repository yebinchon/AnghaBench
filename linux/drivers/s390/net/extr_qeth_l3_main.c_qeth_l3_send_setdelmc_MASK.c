#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {TYPE_4__ a4; TYPE_1__ a6; } ;
struct qeth_ipaddr {scalar_t__ proto; TYPE_5__ u; int /*<<< orphan*/  mac; } ;
struct TYPE_7__ {int /*<<< orphan*/  ip4; int /*<<< orphan*/ * ip6; int /*<<< orphan*/  mac; } ;
struct TYPE_8__ {TYPE_2__ setdelipm; } ;
struct qeth_ipa_cmd {TYPE_3__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 scalar_t__ QETH_PROT_IPV6 ; 
 struct qeth_ipa_cmd* FUNC2 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct qeth_cmd_buffer* FUNC5 (struct qeth_card*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_l3_setdelip_cb ; 
 int FUNC6 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setdelipm ; 

__attribute__((used)) static int FUNC7(struct qeth_card *card,
			struct qeth_ipaddr *addr, int ipacmd)
{
	struct qeth_cmd_buffer *iob;
	struct qeth_ipa_cmd *cmd;

	FUNC1(card, 4, "setdelmc");

	iob = FUNC5(card, ipacmd, addr->proto,
				 FUNC0(setdelipm));
	if (!iob)
		return -ENOMEM;
	cmd = FUNC2(iob);
	FUNC3(cmd->data.setdelipm.mac, addr->mac);
	if (addr->proto == QETH_PROT_IPV6)
		FUNC4(cmd->data.setdelipm.ip6, &addr->u.a6.addr,
		       sizeof(struct in6_addr));
	else
		FUNC4(&cmd->data.setdelipm.ip4, &addr->u.a4.addr, 4);

	return FUNC6(card, iob, qeth_l3_setdelip_cb, NULL);
}