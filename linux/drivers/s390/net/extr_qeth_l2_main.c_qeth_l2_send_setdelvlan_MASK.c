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
struct TYPE_3__ {int /*<<< orphan*/  vlan_id; } ;
struct TYPE_4__ {TYPE_1__ setdelvlan; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef  enum qeth_ipa_cmds { ____Placeholder_qeth_ipa_cmds } qeth_ipa_cmds ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 struct qeth_ipa_cmd* FUNC2 (struct qeth_cmd_buffer*) ; 
 struct qeth_cmd_buffer* FUNC3 (struct qeth_card*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_l2_send_setdelvlan_cb ; 
 int FUNC4 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setdelvlan ; 

__attribute__((used)) static int FUNC5(struct qeth_card *card, __u16 i,
				   enum qeth_ipa_cmds ipacmd)
{
	struct qeth_ipa_cmd *cmd;
	struct qeth_cmd_buffer *iob;

	FUNC1(card, 4, "L2sdv%x", ipacmd);
	iob = FUNC3(card, ipacmd, QETH_PROT_IPV4,
				 FUNC0(setdelvlan));
	if (!iob)
		return -ENOMEM;
	cmd = FUNC2(iob);
	cmd->data.setdelvlan.vlan_id = i;
	return FUNC4(card, iob, qeth_l2_send_setdelvlan_cb, NULL);
}