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
struct qeth_reply {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  addr; } ;
struct TYPE_9__ {TYPE_3__ change_addr; } ;
struct TYPE_6__ {int flags; } ;
struct qeth_ipacmd_setadpparms {TYPE_4__ data; TYPE_1__ hdr; } ;
struct TYPE_10__ {struct qeth_ipacmd_setadpparms setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_5__ data; } ;
struct qeth_card {TYPE_2__* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int,char*) ; 
 int QETH_SETADP_FLAGS_VIRTUAL_MAC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct qeth_ipa_cmd*) ; 

__attribute__((used)) static int FUNC7(struct qeth_card *card,
		struct qeth_reply *reply, unsigned long data)
{
	struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;
	struct qeth_ipacmd_setadpparms *adp_cmd;

	FUNC3(card, 4, "chgmaccb");
	if (FUNC6(cmd))
		return -EIO;

	adp_cmd = &cmd->data.setadapterparms;
	if (!FUNC5(adp_cmd->data.change_addr.addr))
		return -EADDRNOTAVAIL;

	if (FUNC0(card) && FUNC1(card) && !FUNC2(card) &&
	    !(adp_cmd->hdr.flags & QETH_SETADP_FLAGS_VIRTUAL_MAC))
		return -EADDRNOTAVAIL;

	FUNC4(card->dev->dev_addr, adp_cmd->data.change_addr.addr);
	return 0;
}