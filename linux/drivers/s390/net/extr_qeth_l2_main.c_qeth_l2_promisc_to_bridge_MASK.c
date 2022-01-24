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
struct TYPE_4__ {int promisc_mode; } ;
struct TYPE_6__ {int role; scalar_t__ reflect_promisc_primary; } ;
struct TYPE_5__ {TYPE_3__ sbp; } ;
struct qeth_card {TYPE_1__ info; TYPE_2__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*,char,int) ; 
 int QETH_SBP_ROLE_NONE ; 
 int QETH_SBP_ROLE_PRIMARY ; 
 int QETH_SBP_ROLE_SECONDARY ; 
 int FUNC2 (struct qeth_card*,int) ; 

__attribute__((used)) static void FUNC3(struct qeth_card *card, bool enable)
{
	int role;
	int rc;

	FUNC0(card, 3, "pmisc2br");

	if (enable) {
		if (card->options.sbp.reflect_promisc_primary)
			role = QETH_SBP_ROLE_PRIMARY;
		else
			role = QETH_SBP_ROLE_SECONDARY;
	} else
		role = QETH_SBP_ROLE_NONE;

	rc = FUNC2(card, role);
	FUNC1(card, 2, "bpm%c%04x", enable ? '+' : '-', rc);
	if (!rc) {
		card->options.sbp.role = role;
		card->info.promisc_mode = enable;
	}
}