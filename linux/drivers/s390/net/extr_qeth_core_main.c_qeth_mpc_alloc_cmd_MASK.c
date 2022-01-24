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
struct qeth_cmd_buffer {int /*<<< orphan*/  finalize; int /*<<< orphan*/  data; } ;
struct qeth_card {int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_CMD_WRITE ; 
 int /*<<< orphan*/  QETH_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,unsigned int) ; 
 struct qeth_cmd_buffer* FUNC2 (int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_mpc_finalize_cmd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct qeth_cmd_buffer *FUNC4(struct qeth_card *card,
						  void *data,
						  unsigned int data_length)
{
	struct qeth_cmd_buffer *iob;

	iob = FUNC2(&card->write, data_length, 1, QETH_TIMEOUT);
	if (!iob)
		return NULL;

	FUNC1(iob->data, data, data_length);
	FUNC3(FUNC0(iob), CCW_CMD_WRITE, 0, data_length,
		       iob->data);
	iob->finalize = qeth_mpc_finalize_cmd;
	return iob;
}