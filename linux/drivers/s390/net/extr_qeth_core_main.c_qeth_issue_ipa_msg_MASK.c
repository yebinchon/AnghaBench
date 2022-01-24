#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int command; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; } ;
struct qeth_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,int,int /*<<< orphan*/ ,...) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct qeth_ipa_cmd *cmd, int rc,
		struct qeth_card *card)
{
	const char *ipa_name;
	int com = cmd->hdr.command;
	ipa_name = FUNC2(com);

	if (rc)
		FUNC1(2, "IPA: %s(%#x) for device %x returned %#x \"%s\"\n",
				 ipa_name, com, FUNC0(card), rc,
				 FUNC3(rc));
	else
		FUNC1(5, "IPA: %s(%#x) for device %x succeeded\n",
				 ipa_name, com, FUNC0(card));
}