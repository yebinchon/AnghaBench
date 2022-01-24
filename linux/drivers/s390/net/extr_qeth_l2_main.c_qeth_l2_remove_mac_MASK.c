#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct qeth_card {int dummy; } ;
typedef  enum qeth_ipa_cmds { ____Placeholder_qeth_ipa_cmds } qeth_ipa_cmds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int IPA_CMD_DELGMAC ; 
 int IPA_CMD_DELVMAC ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct qeth_card*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct qeth_card *card, u8 *mac)
{
	enum qeth_ipa_cmds cmd = FUNC3(mac) ?
					IPA_CMD_DELGMAC : IPA_CMD_DELVMAC;
	int rc;

	FUNC1(card, 2, "L2Rmac");
	rc = FUNC4(card, mac, cmd);
	if (rc)
		FUNC2(2, "Failed to delete MAC on device %u: %d\n",
				 FUNC0(card), rc);
	return rc;
}