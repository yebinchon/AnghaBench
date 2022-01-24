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
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ setrtg; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef  enum qeth_routing_types { ____Placeholder_qeth_routing_types } qeth_routing_types ;
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IPA_CMD_SETRTG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 struct qeth_ipa_cmd* FUNC2 (struct qeth_cmd_buffer*) ; 
 struct qeth_cmd_buffer* FUNC3 (struct qeth_card*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setrtg ; 

__attribute__((used)) static int FUNC5(struct qeth_card *card,
	enum qeth_routing_types type, enum qeth_prot_versions prot)
{
	int rc;
	struct qeth_ipa_cmd *cmd;
	struct qeth_cmd_buffer *iob;

	FUNC1(card, 4, "setroutg");
	iob = FUNC3(card, IPA_CMD_SETRTG, prot,
				 FUNC0(setrtg));
	if (!iob)
		return -ENOMEM;
	cmd = FUNC2(iob);
	cmd->data.setrtg.type = (type);
	rc = FUNC4(card, iob, NULL, NULL);

	return rc;
}