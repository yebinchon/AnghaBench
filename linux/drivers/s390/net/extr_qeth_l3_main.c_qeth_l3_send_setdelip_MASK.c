#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_9__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  pfxlen; int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {TYPE_3__ a4; TYPE_1__ a6; } ;
struct qeth_ipaddr {scalar_t__ proto; TYPE_4__ u; } ;
struct TYPE_11__ {void* flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  ip_addr; } ;
struct TYPE_8__ {void* flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  ip_addr; } ;
struct TYPE_12__ {TYPE_5__ setdelip4; TYPE_2__ setdelip6; } ;
struct qeth_ipa_cmd {TYPE_6__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  enum qeth_ipa_cmds { ____Placeholder_qeth_ipa_cmds } qeth_ipa_cmds ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int ENOMEM ; 
 int IPA_CMD_SETIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*,void*) ; 
 scalar_t__ QETH_PROT_IPV6 ; 
 struct qeth_ipa_cmd* FUNC3 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct qeth_cmd_buffer* FUNC5 (struct qeth_card*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct qeth_ipaddr*,int) ; 
 int /*<<< orphan*/  qeth_l3_setdelip_cb ; 
 int FUNC8 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setdelip6 ; 

__attribute__((used)) static int FUNC9(struct qeth_card *card,
				 struct qeth_ipaddr *addr,
				 enum qeth_ipa_cmds ipacmd)
{
	struct qeth_cmd_buffer *iob;
	struct qeth_ipa_cmd *cmd;
	__u8 netmask[16];
	u32 flags;

	FUNC1(card, 4, "setdelip");

	iob = FUNC5(card, ipacmd, addr->proto,
				 FUNC0(setdelip6));
	if (!iob)
		return -ENOMEM;
	cmd = FUNC3(iob);

	flags = FUNC7(addr, ipacmd == IPA_CMD_SETIP);
	FUNC2(card, 4, "flags%02X", flags);

	if (addr->proto == QETH_PROT_IPV6) {
		FUNC4(cmd->data.setdelip6.ip_addr, &addr->u.a6.addr,
		       sizeof(struct in6_addr));
		FUNC6(netmask, addr->u.a6.pfxlen);
		FUNC4(cmd->data.setdelip6.mask, netmask,
		       sizeof(struct in6_addr));
		cmd->data.setdelip6.flags = flags;
	} else {
		FUNC4(cmd->data.setdelip4.ip_addr, &addr->u.a4.addr, 4);
		FUNC4(cmd->data.setdelip4.mask, &addr->u.a4.mask, 4);
		cmd->data.setdelip4.flags = flags;
	}

	return FUNC8(card, iob, qeth_l3_setdelip_cb, NULL);
}