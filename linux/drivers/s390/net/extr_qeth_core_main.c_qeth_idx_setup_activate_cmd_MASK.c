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
typedef  int u8 ;
typedef  int u16 ;
struct qeth_cmd_buffer {int /*<<< orphan*/  data; int /*<<< orphan*/  finalize; int /*<<< orphan*/  length; } ;
struct TYPE_6__ {int cula; int unit_addr2; int func_level; } ;
struct TYPE_5__ {int issuer_rm_w; } ;
struct qeth_card {TYPE_3__ info; TYPE_2__ token; TYPE_1__* dev; } ;
struct ccw_dev_id {int devno; } ;
struct ccw1 {int dummy; } ;
struct TYPE_4__ {scalar_t__ dev_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  CCW_CMD_READ ; 
 int /*<<< orphan*/  CCW_CMD_WRITE ; 
 int /*<<< orphan*/  CCW_FLAG_CC ; 
 int /*<<< orphan*/  IDX_ACTIVATE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int QETH_MPC_TOKEN_LENGTH ; 
 struct ccw1* FUNC6 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ccw_dev_id*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  qeth_idx_finalize_cmd ; 
 int /*<<< orphan*/  FUNC9 (struct ccw1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct qeth_card *card,
					struct qeth_cmd_buffer *iob)
{
	u16 addr = (card->info.cula << 8) + card->info.unit_addr2;
	u8 port = ((u8)card->dev->dev_port) | 0x80;
	struct ccw1 *ccw = FUNC6(iob);
	struct ccw_dev_id dev_id;

	FUNC9(&ccw[0], CCW_CMD_WRITE, CCW_FLAG_CC, IDX_ACTIVATE_SIZE,
		       iob->data);
	FUNC9(&ccw[1], CCW_CMD_READ, 0, iob->length, iob->data);
	FUNC7(FUNC0(card), &dev_id);
	iob->finalize = qeth_idx_finalize_cmd;

	FUNC8(FUNC3(iob->data), &port, 1);
	FUNC8(FUNC2(iob->data),
	       &card->token.issuer_rm_w, QETH_MPC_TOKEN_LENGTH);
	FUNC8(FUNC1(iob->data),
	       &card->info.func_level, 2);
	FUNC8(FUNC4(iob->data), &dev_id.devno, 2);
	FUNC8(FUNC5(iob->data), &addr, 2);
}