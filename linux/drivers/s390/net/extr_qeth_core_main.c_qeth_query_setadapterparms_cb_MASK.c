#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct qeth_reply {int dummy; } ;
struct TYPE_11__ {int lan_type; int /*<<< orphan*/  supported_cmds; } ;
struct TYPE_12__ {TYPE_4__ query_cmds_supp; } ;
struct TYPE_13__ {TYPE_5__ data; } ;
struct TYPE_14__ {TYPE_6__ setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_7__ data; } ;
struct TYPE_9__ {int /*<<< orphan*/  supported_funcs; } ;
struct TYPE_10__ {TYPE_2__ adp; } ;
struct TYPE_8__ {int link_type; } ;
struct qeth_card {TYPE_3__ options; TYPE_1__ info; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*,int) ; 
 scalar_t__ FUNC2 (struct qeth_ipa_cmd*) ; 

__attribute__((used)) static int FUNC3(struct qeth_card *card,
		struct qeth_reply *reply, unsigned long data)
{
	struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;

	FUNC0(card, 3, "quyadpcb");
	if (FUNC2(cmd))
		return -EIO;

	if (cmd->data.setadapterparms.data.query_cmds_supp.lan_type & 0x7f) {
		card->info.link_type =
		      cmd->data.setadapterparms.data.query_cmds_supp.lan_type;
		FUNC1(card, 2, "lnk %d", card->info.link_type);
	}
	card->options.adp.supported_funcs =
		cmd->data.setadapterparms.data.query_cmds_supp.supported_cmds;
	return 0;
}