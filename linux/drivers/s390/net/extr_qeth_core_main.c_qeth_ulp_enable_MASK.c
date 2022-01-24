#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct qeth_cmd_buffer {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {scalar_t__ ulp_filter_w; scalar_t__ cm_connection_r; } ;
struct qeth_card {TYPE_2__ token; TYPE_1__* dev; } ;
struct TYPE_3__ {scalar_t__ dev_port; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int QETH_MPC_TOKEN_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ULP_ENABLE ; 
 int /*<<< orphan*/  ULP_ENABLE_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 struct qeth_cmd_buffer* FUNC6 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct qeth_card*) ; 
 int FUNC8 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_ulp_enable_cb ; 
 int FUNC9 (struct qeth_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct qeth_card *card)
{
	u8 prot_type = FUNC7(card);
	struct qeth_cmd_buffer *iob;
	u16 max_mtu;
	int rc;

	FUNC0(card, 2, "ulpenabl");

	iob = FUNC6(card, ULP_ENABLE, ULP_ENABLE_SIZE);
	if (!iob)
		return -ENOMEM;

	*(FUNC3(iob->data)) = (u8) card->dev->dev_port;
	FUNC5(FUNC4(iob->data), &prot_type, 1);
	FUNC5(FUNC1(iob->data),
	       &card->token.cm_connection_r, QETH_MPC_TOKEN_LENGTH);
	FUNC5(FUNC2(iob->data),
	       &card->token.ulp_filter_w, QETH_MPC_TOKEN_LENGTH);
	rc = FUNC8(card, iob, qeth_ulp_enable_cb, &max_mtu);
	if (rc)
		return rc;
	return FUNC9(card, max_mtu);
}