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
struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct TYPE_6__ {TYPE_2__ setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_3__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef  enum qeth_ipa_promisc_modes { ____Placeholder_qeth_ipa_promisc_modes } qeth_ipa_promisc_modes ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_SETADP_SET_PROMISC_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SET_PROMISC_MODE_OFF ; 
 int SET_PROMISC_MODE_ON ; 
 struct qeth_ipa_cmd* FUNC3 (struct qeth_cmd_buffer*) ; 
 struct qeth_cmd_buffer* FUNC4 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_setadp_promisc_mode_cb ; 

void FUNC6(struct qeth_card *card, bool enable)
{
	enum qeth_ipa_promisc_modes mode = enable ? SET_PROMISC_MODE_ON :
						    SET_PROMISC_MODE_OFF;
	struct qeth_cmd_buffer *iob;
	struct qeth_ipa_cmd *cmd;

	FUNC0(card, 4, "setprom");
	FUNC1(card, 4, "mode:%x", mode);

	iob = FUNC4(card, IPA_SETADP_SET_PROMISC_MODE,
				   FUNC2(mode));
	if (!iob)
		return;
	cmd = FUNC3(iob);
	cmd->data.setadapterparms.data.mode = mode;
	FUNC5(card, iob, qeth_setadp_promisc_mode_cb, NULL);
}