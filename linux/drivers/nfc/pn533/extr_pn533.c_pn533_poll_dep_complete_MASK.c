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
struct pn533 {TYPE_2__* nfc_dev; int /*<<< orphan*/  tgt_active_prot; scalar_t__ tgt_available_prots; int /*<<< orphan*/  dev; int /*<<< orphan*/  rf_work; int /*<<< orphan*/  wq; } ;
struct nfc_target {int nfcid1_len; int /*<<< orphan*/  nfcid1; int /*<<< orphan*/  supported_protocols; } ;
struct TYPE_6__ {TYPE_1__* targets; } ;
struct TYPE_5__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFC_PROTO_NFC_DEP ; 
 int /*<<< orphan*/  NFC_PROTO_NFC_DEP_MASK ; 
 int /*<<< orphan*/  NFC_RF_INITIATOR ; 
 int PN533_CMD_RET_MASK ; 
 int PN533_CMD_RET_SUCCESS ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (TYPE_2__*,struct nfc_target*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pn533*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct pn533 *dev, void *arg,
				   struct sk_buff *resp)
{
	struct pn533_cmd_jump_dep_response *rsp;
	struct nfc_target nfc_target;
	u8 target_gt_len;
	int rc;

	if (FUNC0(resp))
		return FUNC1(resp);

	rsp = (struct pn533_cmd_jump_dep_response *)resp->data;

	rc = rsp->status & PN533_CMD_RET_MASK;
	if (rc != PN533_CMD_RET_SUCCESS) {
		/* Not target found, turn radio off */
		FUNC9(dev->wq, &dev->rf_work);

		FUNC3(resp);
		return 0;
	}

	FUNC2(dev->dev, "Creating new target");

	nfc_target.supported_protocols = NFC_PROTO_NFC_DEP_MASK;
	nfc_target.nfcid1_len = 10;
	FUNC4(nfc_target.nfcid1, rsp->nfcid3t, nfc_target.nfcid1_len);
	rc = FUNC7(dev->nfc_dev, &nfc_target, 1);
	if (rc)
		goto error;

	dev->tgt_available_prots = 0;
	dev->tgt_active_prot = NFC_PROTO_NFC_DEP;

	/* ATR_RES general bytes are located at offset 17 */
	target_gt_len = resp->len - 17;
	rc = FUNC6(dev->nfc_dev,
					  rsp->gt, target_gt_len);
	if (!rc) {
		rc = FUNC5(dev->nfc_dev,
					dev->nfc_dev->targets[0].idx,
					0, NFC_RF_INITIATOR);

		if (!rc)
			FUNC8(dev);
	}
error:
	FUNC3(resp);
	return rc;
}