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
struct qeth_cmd_buffer {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  cm_connection_r; } ;
struct qeth_card {TYPE_1__ token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QETH_MPC_TOKEN_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qeth_card *card, struct qeth_reply *reply,
		unsigned long data)
{
	struct qeth_cmd_buffer *iob;

	FUNC0(card, 2, "cmsetpcb");

	iob = (struct qeth_cmd_buffer *) data;
	FUNC2(&card->token.cm_connection_r,
	       FUNC1(iob->data),
	       QETH_MPC_TOKEN_LENGTH);
	return 0;
}