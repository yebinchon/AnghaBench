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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct qeth_cmd_buffer {int /*<<< orphan*/  data; int /*<<< orphan*/  finalize; int /*<<< orphan*/  length; } ;
struct TYPE_2__ {int /*<<< orphan*/  ulp_connection_r; } ;
struct qeth_card {TYPE_1__ token; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_CMD_WRITE ; 
 int /*<<< orphan*/ * IPA_PDU_HEADER ; 
 int IPA_PDU_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int QETH_MPC_TOKEN_LENGTH ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  qeth_ipa_finalize_cmd ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct qeth_card *card, struct qeth_cmd_buffer *iob,
			  u16 cmd_length)
{
	u8 prot_type = FUNC8(card);
	u16 total_length = iob->length;

	FUNC9(FUNC6(iob), CCW_CMD_WRITE, 0, total_length,
		       iob->data);
	iob->finalize = qeth_ipa_finalize_cmd;

	FUNC7(iob->data, IPA_PDU_HEADER, IPA_PDU_HEADER_SIZE);
	FUNC7(FUNC5(iob->data), &total_length, 2);
	FUNC7(FUNC1(iob->data), &prot_type, 1);
	FUNC7(FUNC2(iob->data), &cmd_length, 2);
	FUNC7(FUNC3(iob->data), &cmd_length, 2);
	FUNC7(FUNC0(iob->data),
	       &card->token.ulp_connection_r, QETH_MPC_TOKEN_LENGTH);
	FUNC7(FUNC4(iob->data), &cmd_length, 2);
}