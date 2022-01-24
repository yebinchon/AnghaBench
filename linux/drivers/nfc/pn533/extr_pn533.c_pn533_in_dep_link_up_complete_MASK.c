#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct pn533_cmd_jump_dep_response {int status; int /*<<< orphan*/  gt; int /*<<< orphan*/  nfcid3t; } ;
struct pn533 {int tgt_available_prots; int tgt_active_prot; TYPE_2__* nfc_dev; int /*<<< orphan*/  dev; } ;
struct nfc_target {int nfcid1_len; int /*<<< orphan*/  nfcid1; int /*<<< orphan*/  supported_protocols; } ;
struct TYPE_6__ {TYPE_1__* targets; } ;
struct TYPE_5__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int NFC_PROTO_NFC_DEP ; 
 int /*<<< orphan*/  NFC_PROTO_NFC_DEP_MASK ; 
 int /*<<< orphan*/  NFC_RF_INITIATOR ; 
 int PN533_CMD_RET_MASK ; 
 int PN533_CMD_RET_SUCCESS ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (TYPE_2__*,struct nfc_target*,int) ; 

__attribute__((used)) static int FUNC10(struct pn533 *dev, void *arg,
					 struct sk_buff *resp)
{
	struct pn533_cmd_jump_dep_response *rsp;
	u8 target_gt_len;
	int rc;
	u8 active = *(u8 *)arg;

	FUNC4(arg);

	if (FUNC0(resp))
		return FUNC1(resp);

	if (dev->tgt_available_prots &&
	    !(dev->tgt_available_prots & (1 << NFC_PROTO_NFC_DEP))) {
		FUNC7(dev->dev,
			"The target does not support DEP\n");
		rc =  -EINVAL;
		goto error;
	}

	rsp = (struct pn533_cmd_jump_dep_response *)resp->data;

	rc = rsp->status & PN533_CMD_RET_MASK;
	if (rc != PN533_CMD_RET_SUCCESS) {
		FUNC7(dev->dev,
			"Bringing DEP link up failed (error 0x%x)\n", rc);
		goto error;
	}

	if (!dev->tgt_available_prots) {
		struct nfc_target nfc_target;

		FUNC2(dev->dev, "Creating new target\n");

		nfc_target.supported_protocols = NFC_PROTO_NFC_DEP_MASK;
		nfc_target.nfcid1_len = 10;
		FUNC5(nfc_target.nfcid1, rsp->nfcid3t, nfc_target.nfcid1_len);
		rc = FUNC9(dev->nfc_dev, &nfc_target, 1);
		if (rc)
			goto error;

		dev->tgt_available_prots = 0;
	}

	dev->tgt_active_prot = NFC_PROTO_NFC_DEP;

	/* ATR_RES general bytes are located at offset 17 */
	target_gt_len = resp->len - 17;
	rc = FUNC8(dev->nfc_dev,
					  rsp->gt, target_gt_len);
	if (rc == 0)
		rc = FUNC6(dev->nfc_dev,
					dev->nfc_dev->targets[0].idx,
					!active, NFC_RF_INITIATOR);

error:
	FUNC3(resp);
	return rc;
}