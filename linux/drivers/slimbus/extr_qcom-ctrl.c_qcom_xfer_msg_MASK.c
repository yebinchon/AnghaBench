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
typedef  int /*<<< orphan*/  u32 ;
struct slim_msg_txn {scalar_t__ dt; int ec; int /*<<< orphan*/  mt; int /*<<< orphan*/  mc; int /*<<< orphan*/  rl; TYPE_1__* msg; int /*<<< orphan*/  tid; int /*<<< orphan*/  la; } ;
struct slim_controller {int /*<<< orphan*/  dev; } ;
struct qcom_slim_ctrl {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_bytes; int /*<<< orphan*/  wbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  MGR_TX_MSG ; 
 int QCOM_BUF_ALLOC_RETRIES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ SLIM_MSG_DEST_LOGICALADDR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qcom_slim_ctrl* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct qcom_slim_ctrl*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct qcom_slim_ctrl*,struct slim_msg_txn*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct slim_controller *sctrl,
			 struct slim_msg_txn *txn)
{
	struct qcom_slim_ctrl *ctrl = FUNC3(sctrl->dev);
	FUNC0(done);
	void *pbuf = FUNC7(ctrl, txn, &done);
	unsigned long ms = txn->rl + HZ;
	u8 *puc;
	int ret = 0, timeout, retries = QCOM_BUF_ALLOC_RETRIES;
	u8 la = txn->la;
	u32 *head;
	/* HW expects length field to be excluded */
	txn->rl--;

	/* spin till buffer is made available */
	if (!pbuf) {
		while (retries--) {
			FUNC10(10000, 15000);
			pbuf = FUNC7(ctrl, txn, &done);
			if (pbuf)
				break;
		}
	}

	if (retries < 0 && !pbuf)
		return -ENOMEM;

	puc = (u8 *)pbuf;
	head = (u32 *)pbuf;

	if (txn->dt == SLIM_MSG_DEST_LOGICALADDR) {
		*head = FUNC1(txn->rl, txn->mt,
						txn->mc, 0, la);
		puc += 3;
	} else {
		*head = FUNC1(txn->rl, txn->mt,
						txn->mc, 1, la);
		puc += 2;
	}

	if (FUNC9(txn->mt, txn->mc))
		*(puc++) = txn->tid;

	if (FUNC8(txn->mt, txn->mc)) {
		*(puc++) = (txn->ec & 0xFF);
		*(puc++) = (txn->ec >> 8) & 0xFF;
	}

	if (txn->msg && txn->msg->wbuf)
		FUNC4(puc, txn->msg->wbuf, txn->msg->num_bytes);

	FUNC6(ctrl, head, txn->rl, MGR_TX_MSG);
	timeout = FUNC11(&done, FUNC5(ms));

	if (!timeout) {
		FUNC2(ctrl->dev, "TX timed out:MC:0x%x,mt:0x%x", txn->mc,
					txn->mt);
		ret = -ETIMEDOUT;
	}

	return ret;

}