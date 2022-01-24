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
struct TYPE_5__ {int command; int /*<<< orphan*/  return_code; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; } ;
struct TYPE_7__ {int hwtrap; int /*<<< orphan*/  chpid; } ;
struct qeth_card {TYPE_4__* discipline; TYPE_3__ info; TYPE_2__* gdev; int /*<<< orphan*/  dev; int /*<<< orphan*/  close_dev_work; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* control_event_handler ) (struct qeth_card*,struct qeth_ipa_cmd*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  IPA_CMD_ADDRESS_CHANGE_NOTIF 135 
 int IPA_CMD_DELCCID ; 
#define  IPA_CMD_MODCCID 134 
#define  IPA_CMD_REGISTER_LOCAL_ADDR 133 
#define  IPA_CMD_SETBRIDGEPORT_IQD 132 
#define  IPA_CMD_SETBRIDGEPORT_OSA 131 
 int IPA_CMD_SETCCID ; 
 int IPA_CMD_SET_DIAG_ASS ; 
#define  IPA_CMD_STARTLAN 130 
#define  IPA_CMD_STOPLAN 129 
#define  IPA_CMD_UNREGISTER_LOCAL_ADDR 128 
 int /*<<< orphan*/  IPA_RC_VEPA_TO_VEB_TRANSITION ; 
 scalar_t__ FUNC0 (struct qeth_ipa_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_ipa_cmd*,int /*<<< orphan*/ ,struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC9 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct qeth_card*,struct qeth_ipa_cmd*) ; 

__attribute__((used)) static struct qeth_ipa_cmd *FUNC12(struct qeth_card *card,
						struct qeth_ipa_cmd *cmd)
{
	FUNC2(card, 5, "chkipad");

	if (FUNC0(cmd)) {
		if (cmd->hdr.command != IPA_CMD_SETCCID &&
		    cmd->hdr.command != IPA_CMD_DELCCID &&
		    cmd->hdr.command != IPA_CMD_MODCCID &&
		    cmd->hdr.command != IPA_CMD_SET_DIAG_ASS)
			FUNC8(cmd, cmd->hdr.return_code, card);
		return cmd;
	}

	/* handle unsolicited event: */
	switch (cmd->hdr.command) {
	case IPA_CMD_STOPLAN:
		if (cmd->hdr.return_code == IPA_RC_VEPA_TO_VEB_TRANSITION) {
			FUNC4(&card->gdev->dev,
				"Interface %s is down because the adjacent port is no longer in reflective relay mode\n",
				FUNC1(card));
			FUNC10(&card->close_dev_work);
		} else {
			FUNC6(&card->gdev->dev,
				 "The link for interface %s on CHPID 0x%X failed\n",
				 FUNC1(card), card->info.chpid);
			FUNC8(cmd, cmd->hdr.return_code, card);
			FUNC7(card->dev);
		}
		return NULL;
	case IPA_CMD_STARTLAN:
		FUNC5(&card->gdev->dev,
			 "The link for %s on CHPID 0x%X has been restored\n",
			 FUNC1(card), card->info.chpid);
		if (card->info.hwtrap)
			card->info.hwtrap = 2;
		FUNC9(card);
		return NULL;
	case IPA_CMD_SETBRIDGEPORT_IQD:
	case IPA_CMD_SETBRIDGEPORT_OSA:
	case IPA_CMD_ADDRESS_CHANGE_NOTIF:
		if (card->discipline->control_event_handler(card, cmd))
			return cmd;
		return NULL;
	case IPA_CMD_MODCCID:
		return cmd;
	case IPA_CMD_REGISTER_LOCAL_ADDR:
		FUNC2(card, 3, "irla");
		return NULL;
	case IPA_CMD_UNREGISTER_LOCAL_ADDR:
		FUNC2(card, 3, "urla");
		return NULL;
	default:
		FUNC3(2, "Received data is IPA but not a reply!\n");
		return cmd;
	}
}