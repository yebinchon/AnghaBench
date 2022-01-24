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
struct qeth_reply {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  return_code; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; } ;
struct qeth_card {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,struct qeth_reply*,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct qeth_card *card, struct qeth_reply *reply,
			      unsigned long data)
{
	struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;

	FUNC1(card, reply, data);
	return FUNC0(cmd->hdr.return_code);
}