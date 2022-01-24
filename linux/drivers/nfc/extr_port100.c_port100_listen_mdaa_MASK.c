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
struct port100_tg_comm_rf_cmd {int mdaa; int* nfca_param; int* nfcf_param; void* recv_timeout; void* send_timeout; scalar_t__ guard_time; } ;
struct port100_cb_arg {int mdaa; void* complete_arg; int /*<<< orphan*/  complete_cb; } ;
struct port100 {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_tg_mdaa_params {int sens_res; int sel_res; int sc; int /*<<< orphan*/  nfcid2; int /*<<< orphan*/  nfcid1; } ;
typedef  int /*<<< orphan*/  nfc_digital_cmd_complete_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_FRAMING ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_RF_TECH ; 
 int /*<<< orphan*/  NFC_DIGITAL_FRAMING_NFCA_NFC_DEP ; 
 int /*<<< orphan*/  NFC_DIGITAL_RF_TECH_106A ; 
 int /*<<< orphan*/  PORT100_CMD_TG_COMM_RF ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct port100_cb_arg*) ; 
 struct port100_cb_arg* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct port100_tg_comm_rf_cmd*,int /*<<< orphan*/ ,int) ; 
 struct port100* FUNC5 (struct nfc_digital_dev*) ; 
 struct sk_buff* FUNC6 (struct port100*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct port100*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,struct port100_cb_arg*) ; 
 int /*<<< orphan*/  port100_tg_comm_rf_complete ; 
 int FUNC8 (struct nfc_digital_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC10(struct nfc_digital_dev *ddev,
			       struct digital_tg_mdaa_params *params,
			       u16 timeout,
			       nfc_digital_cmd_complete_t cb, void *arg)
{
	struct port100 *dev = FUNC5(ddev);
	struct port100_tg_comm_rf_cmd *hdr;
	struct port100_cb_arg *cb_arg;
	struct sk_buff *skb;
	int rc;

	rc = FUNC8(ddev, NFC_DIGITAL_CONFIG_RF_TECH,
				     NFC_DIGITAL_RF_TECH_106A);
	if (rc)
		return rc;

	rc = FUNC8(ddev, NFC_DIGITAL_CONFIG_FRAMING,
				     NFC_DIGITAL_FRAMING_NFCA_NFC_DEP);
	if (rc)
		return rc;

	cb_arg = FUNC2(sizeof(struct port100_cb_arg), GFP_KERNEL);
	if (!cb_arg)
		return -ENOMEM;

	cb_arg->complete_cb = cb;
	cb_arg->complete_arg = arg;
	cb_arg->mdaa = 1;

	skb = FUNC6(dev, 0);
	if (!skb) {
		FUNC1(cb_arg);
		return -ENOMEM;
	}

	FUNC9(skb, sizeof(struct port100_tg_comm_rf_cmd));
	hdr = (struct port100_tg_comm_rf_cmd *)skb->data;

	FUNC4(hdr, 0, sizeof(struct port100_tg_comm_rf_cmd));

	hdr->guard_time = 0;
	hdr->send_timeout = FUNC0(0xFFFF);
	hdr->mdaa = 1;
	hdr->nfca_param[0] = (params->sens_res >> 8) & 0xFF;
	hdr->nfca_param[1] = params->sens_res & 0xFF;
	FUNC3(hdr->nfca_param + 2, params->nfcid1, 3);
	hdr->nfca_param[5] = params->sel_res;
	FUNC3(hdr->nfcf_param, params->nfcid2, 8);
	hdr->nfcf_param[16] = (params->sc >> 8) & 0xFF;
	hdr->nfcf_param[17] = params->sc & 0xFF;
	hdr->recv_timeout = FUNC0(timeout);

	return FUNC7(dev, PORT100_CMD_TG_COMM_RF, skb,
				      port100_tg_comm_rf_complete, cb_arg);
}