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
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct port100_tg_comm_rf_cmd {void* recv_timeout; void* send_timeout; void* guard_time; } ;
struct port100_cb_arg {void* complete_arg; int /*<<< orphan*/  complete_cb; } ;
struct port100 {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;
typedef  int /*<<< orphan*/  nfc_digital_cmd_complete_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PORT100_CMD_TG_COMM_RF ; 
 void* FUNC0 (int) ; 
 struct port100_cb_arg* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct port100_tg_comm_rf_cmd*,int /*<<< orphan*/ ,int) ; 
 struct port100* FUNC3 (struct nfc_digital_dev*) ; 
 int FUNC4 (struct port100*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,struct port100_cb_arg*) ; 
 int /*<<< orphan*/  port100_tg_comm_rf_complete ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC6(struct nfc_digital_dev *ddev,
			       struct sk_buff *skb, u16 timeout,
			       nfc_digital_cmd_complete_t cb, void *arg)
{
	struct port100 *dev = FUNC3(ddev);
	struct port100_tg_comm_rf_cmd *hdr;
	struct port100_cb_arg *cb_arg;

	cb_arg = FUNC1(sizeof(struct port100_cb_arg), GFP_KERNEL);
	if (!cb_arg)
		return -ENOMEM;

	cb_arg->complete_cb = cb;
	cb_arg->complete_arg = arg;

	FUNC5(skb, sizeof(struct port100_tg_comm_rf_cmd));

	hdr = (struct port100_tg_comm_rf_cmd *)skb->data;

	FUNC2(hdr, 0, sizeof(struct port100_tg_comm_rf_cmd));
	hdr->guard_time = FUNC0(500);
	hdr->send_timeout = FUNC0(0xFFFF);
	hdr->recv_timeout = FUNC0(timeout);

	return FUNC4(dev, PORT100_CMD_TG_COMM_RF, skb,
				      port100_tg_comm_rf_complete, cb_arg);
}