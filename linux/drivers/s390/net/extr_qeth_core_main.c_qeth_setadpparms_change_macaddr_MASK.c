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
struct TYPE_6__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  addr_size; int /*<<< orphan*/  cmd; } ;
struct TYPE_7__ {TYPE_1__ change_addr; } ;
struct TYPE_8__ {TYPE_2__ data; } ;
struct TYPE_9__ {TYPE_3__ setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_4__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {TYPE_5__* dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANGE_ADDR_READ_MAC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IPA_SETADP_ALTER_MAC_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct qeth_ipa_cmd* FUNC2 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  change_addr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qeth_cmd_buffer* FUNC4 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_setadpparms_change_macaddr_cb ; 

int FUNC6(struct qeth_card *card)
{
	int rc;
	struct qeth_cmd_buffer *iob;
	struct qeth_ipa_cmd *cmd;

	FUNC0(card, 4, "chgmac");

	iob = FUNC4(card, IPA_SETADP_ALTER_MAC_ADDRESS,
				   FUNC1(change_addr));
	if (!iob)
		return -ENOMEM;
	cmd = FUNC2(iob);
	cmd->data.setadapterparms.data.change_addr.cmd = CHANGE_ADDR_READ_MAC;
	cmd->data.setadapterparms.data.change_addr.addr_size = ETH_ALEN;
	FUNC3(cmd->data.setadapterparms.data.change_addr.addr,
			card->dev->dev_addr);
	rc = FUNC5(card, iob, qeth_setadpparms_change_macaddr_cb,
			       NULL);
	return rc;
}