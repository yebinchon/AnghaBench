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
struct TYPE_5__ {int /*<<< orphan*/ * unique_id; } ;
struct TYPE_6__ {TYPE_2__ create_destroy_addr; } ;
struct qeth_ipa_cmd {TYPE_3__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  unique_id; } ;
struct qeth_card {TYPE_1__ info; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IPA_CMD_CREATE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_PROT_IPV6 ; 
 struct qeth_ipa_cmd* FUNC2 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  create_destroy_addr ; 
 struct qeth_cmd_buffer* FUNC3 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_l3_iqd_read_initial_mac_cb ; 
 int FUNC4 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct qeth_card *card)
{
	int rc = 0;
	struct qeth_cmd_buffer *iob;
	struct qeth_ipa_cmd *cmd;

	FUNC1(card, 2, "hsrmac");

	iob = FUNC3(card, IPA_CMD_CREATE_ADDR, QETH_PROT_IPV6,
				 FUNC0(create_destroy_addr));
	if (!iob)
		return -ENOMEM;
	cmd = FUNC2(iob);
	*((__u16 *) &cmd->data.create_destroy_addr.unique_id[6]) =
			card->info.unique_id;

	rc = FUNC4(card, iob, qeth_l3_iqd_read_initial_mac_cb,
				NULL);
	return rc;
}