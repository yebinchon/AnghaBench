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
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IPA_CMD_STARTLAN ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_PROT_NONE ; 
 struct qeth_cmd_buffer* FUNC1 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_send_startlan_cb ; 

__attribute__((used)) static int FUNC3(struct qeth_card *card)
{
	struct qeth_cmd_buffer *iob;

	FUNC0(card, 2, "strtlan");

	iob = FUNC1(card, IPA_CMD_STARTLAN, QETH_PROT_NONE, 0);
	if (!iob)
		return -ENOMEM;
	return FUNC2(card, iob, qeth_send_startlan_cb, NULL);
}