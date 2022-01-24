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
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ data; } ;
struct port100_tg_comm_rf_res {int /*<<< orphan*/  target_activated; int /*<<< orphan*/  status; } ;
struct port100_cb_arg {int /*<<< orphan*/  complete_arg; scalar_t__ mdaa; int /*<<< orphan*/  (* complete_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ;} ;
struct port100 {int /*<<< orphan*/  nfc_digital_dev; } ;
typedef  int /*<<< orphan*/  (* nfc_digital_cmd_complete_t ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ PORT100_CMD_STATUS_OK ; 
 scalar_t__ PORT100_CMD_STATUS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct port100_cb_arg*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct port100*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC7(struct port100 *dev, void *arg,
					struct sk_buff *resp)
{
	u32 status;
	struct port100_cb_arg *cb_arg = arg;
	nfc_digital_cmd_complete_t cb = cb_arg->complete_cb;
	struct port100_tg_comm_rf_res *hdr;

	if (FUNC1(resp))
		goto exit;

	hdr = (struct port100_tg_comm_rf_res *)resp->data;

	status = FUNC4(hdr->status);

	if (cb_arg->mdaa &&
	    !FUNC5(dev, hdr->target_activated)) {
		FUNC3(resp);
		resp = FUNC0(-ETIMEDOUT);

		goto exit;
	}

	FUNC6(resp, sizeof(struct port100_tg_comm_rf_res));

	if (status != PORT100_CMD_STATUS_OK) {
		FUNC3(resp);

		if (status == PORT100_CMD_STATUS_TIMEOUT)
			resp = FUNC0(-ETIMEDOUT);
		else
			resp = FUNC0(-EIO);
	}

exit:
	cb(dev->nfc_digital_dev, cb_arg->complete_arg, resp);

	FUNC2(cb_arg);
}