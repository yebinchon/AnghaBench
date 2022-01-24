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
struct lcs_cmd {int /*<<< orphan*/  initiator; int /*<<< orphan*/  cmd_code; } ;
struct lcs_card {int dummy; } ;
struct lcs_buffer {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCS_CMD_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LCS_INITIATOR_TCPIP ; 
 int /*<<< orphan*/  LCS_STD_CMD_SIZE ; 
 struct lcs_buffer* FUNC1 (struct lcs_card*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lcs_card*,struct lcs_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static int
FUNC3(struct lcs_card *card)
{
	struct lcs_buffer *buffer;
	struct lcs_cmd *cmd;

	FUNC0(2, trace, "shutdown");
	buffer = FUNC1(card, LCS_STD_CMD_SIZE);
	cmd = (struct lcs_cmd *) buffer->data;
	cmd->cmd_code = LCS_CMD_SHUTDOWN;
	cmd->initiator = LCS_INITIATOR_TCPIP;
	return FUNC2(card, buffer, NULL);
}