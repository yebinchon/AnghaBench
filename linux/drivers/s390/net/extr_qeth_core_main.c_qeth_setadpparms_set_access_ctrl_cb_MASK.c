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
struct qeth_set_access_ctrl {int /*<<< orphan*/  subcmd_code; } ;
struct qeth_reply {scalar_t__ param; } ;
struct TYPE_14__ {scalar_t__ return_code; } ;
struct TYPE_9__ {int return_code; } ;
struct TYPE_8__ {struct qeth_set_access_ctrl set_access_ctrl; } ;
struct TYPE_10__ {TYPE_2__ hdr; TYPE_1__ data; } ;
struct TYPE_11__ {TYPE_3__ setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_7__ hdr; TYPE_4__ data; } ;
struct TYPE_13__ {int /*<<< orphan*/  prev_isolation; int /*<<< orphan*/  isolation; } ;
struct qeth_card {TYPE_6__ options; TYPE_5__* gdev; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int EIO ; 
 int /*<<< orphan*/  ISOLATION_MODE_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,...) ; 
#define  SET_ACCESS_CTRL_RC_ACTIVE_CHECKSUM_OFF 136 
#define  SET_ACCESS_CTRL_RC_ALREADY_ISOLATED 135 
#define  SET_ACCESS_CTRL_RC_ALREADY_NOT_ISOLATED 134 
#define  SET_ACCESS_CTRL_RC_NONE_SHARED_ADAPTER 133 
#define  SET_ACCESS_CTRL_RC_NOT_SUPPORTED 132 
#define  SET_ACCESS_CTRL_RC_REFLREL_DEACT_FAILED 131 
#define  SET_ACCESS_CTRL_RC_REFLREL_FAILED 130 
#define  SET_ACCESS_CTRL_RC_REFLREL_UNSUPPORTED 129 
#define  SET_ACCESS_CTRL_RC_SUCCESS 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_ipa_cmd*) ; 

__attribute__((used)) static int FUNC8(struct qeth_card *card,
		struct qeth_reply *reply, unsigned long data)
{
	struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;
	struct qeth_set_access_ctrl *access_ctrl_req;
	int fallback = *(int *)reply->param;

	FUNC1(card, 4, "setaccb");
	if (cmd->hdr.return_code)
		return -EIO;
	FUNC7(cmd);

	access_ctrl_req = &cmd->data.setadapterparms.data.set_access_ctrl;
	FUNC2(card, 2, "rc=%d",
			cmd->data.setadapterparms.hdr.return_code);
	if (cmd->data.setadapterparms.hdr.return_code !=
						SET_ACCESS_CTRL_RC_SUCCESS)
		FUNC3(3, "ERR:SET_ACCESS_CTRL(%#x) on device %x: %#x\n",
				 access_ctrl_req->subcmd_code, FUNC0(card),
				 cmd->data.setadapterparms.hdr.return_code);
	switch (cmd->data.setadapterparms.hdr.return_code) {
	case SET_ACCESS_CTRL_RC_SUCCESS:
		if (card->options.isolation == ISOLATION_MODE_NONE) {
			FUNC5(&card->gdev->dev,
			    "QDIO data connection isolation is deactivated\n");
		} else {
			FUNC5(&card->gdev->dev,
			    "QDIO data connection isolation is activated\n");
		}
		break;
	case SET_ACCESS_CTRL_RC_ALREADY_NOT_ISOLATED:
		FUNC3(2, "QDIO data connection isolation on device %x already deactivated\n",
				 FUNC0(card));
		if (fallback)
			card->options.isolation = card->options.prev_isolation;
		break;
	case SET_ACCESS_CTRL_RC_ALREADY_ISOLATED:
		FUNC3(2, "QDIO data connection isolation on device %x already activated\n",
				 FUNC0(card));
		if (fallback)
			card->options.isolation = card->options.prev_isolation;
		break;
	case SET_ACCESS_CTRL_RC_NOT_SUPPORTED:
		FUNC4(&card->gdev->dev, "Adapter does not "
			"support QDIO data connection isolation\n");
		break;
	case SET_ACCESS_CTRL_RC_NONE_SHARED_ADAPTER:
		FUNC4(&card->gdev->dev,
			"Adapter is dedicated. "
			"QDIO data connection isolation not supported\n");
		if (fallback)
			card->options.isolation = card->options.prev_isolation;
		break;
	case SET_ACCESS_CTRL_RC_ACTIVE_CHECKSUM_OFF:
		FUNC4(&card->gdev->dev,
			"TSO does not permit QDIO data connection isolation\n");
		if (fallback)
			card->options.isolation = card->options.prev_isolation;
		break;
	case SET_ACCESS_CTRL_RC_REFLREL_UNSUPPORTED:
		FUNC4(&card->gdev->dev, "The adjacent switch port does not "
			"support reflective relay mode\n");
		if (fallback)
			card->options.isolation = card->options.prev_isolation;
		break;
	case SET_ACCESS_CTRL_RC_REFLREL_FAILED:
		FUNC4(&card->gdev->dev, "The reflective relay mode cannot be "
					"enabled at the adjacent switch port");
		if (fallback)
			card->options.isolation = card->options.prev_isolation;
		break;
	case SET_ACCESS_CTRL_RC_REFLREL_DEACT_FAILED:
		FUNC6(&card->gdev->dev, "Turning off reflective relay mode "
					"at the adjacent switch failed\n");
		break;
	default:
		/* this should never happen */
		if (fallback)
			card->options.isolation = card->options.prev_isolation;
		break;
	}
	return (cmd->hdr.return_code) ? -EIO : 0;
}