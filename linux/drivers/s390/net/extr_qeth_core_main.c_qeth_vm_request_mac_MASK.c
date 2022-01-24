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
struct qeth_card {TYPE_1__* dev; } ;
struct diag26c_mac_resp {int resp_buf_len; scalar_t__ resp_version; scalar_t__ version; int* mac; int /*<<< orphan*/  devno; int /*<<< orphan*/  op_code; } ;
struct diag26c_mac_req {int resp_buf_len; scalar_t__ resp_version; scalar_t__ version; int* mac; int /*<<< orphan*/  devno; int /*<<< orphan*/  op_code; } ;
struct ccw_dev_id {int /*<<< orphan*/  devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  DIAG26C_GET_MAC ; 
 int /*<<< orphan*/  DIAG26C_MAC_SERVICES ; 
 scalar_t__ DIAG26C_VERSION2 ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct diag26c_mac_resp*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ccw_dev_id*) ; 
 int FUNC5 (struct diag26c_mac_resp*,struct diag26c_mac_resp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (struct diag26c_mac_resp*) ; 
 struct diag26c_mac_resp* FUNC9 (int,int) ; 

int FUNC10(struct qeth_card *card)
{
	struct diag26c_mac_resp *response;
	struct diag26c_mac_req *request;
	struct ccw_dev_id id;
	int rc;

	FUNC2(card, 2, "vmreqmac");

	request = FUNC9(sizeof(*request), GFP_KERNEL | GFP_DMA);
	response = FUNC9(sizeof(*response), GFP_KERNEL | GFP_DMA);
	if (!request || !response) {
		rc = -ENOMEM;
		goto out;
	}

	FUNC4(FUNC0(card), &id);
	request->resp_buf_len = sizeof(*response);
	request->resp_version = DIAG26C_VERSION2;
	request->op_code = DIAG26C_GET_MAC;
	request->devno = id.devno;

	FUNC3(CTRL, 2, request, sizeof(*request));
	rc = FUNC5(request, response, DIAG26C_MAC_SERVICES);
	FUNC3(CTRL, 2, request, sizeof(*request));
	if (rc)
		goto out;
	FUNC3(CTRL, 2, response, sizeof(*response));

	if (request->resp_buf_len < sizeof(*response) ||
	    response->version != request->resp_version) {
		rc = -EIO;
		FUNC2(card, 2, "badresp");
		FUNC1(card, 2, &request->resp_buf_len,
			      sizeof(request->resp_buf_len));
	} else if (!FUNC7(response->mac)) {
		rc = -EINVAL;
		FUNC2(card, 2, "badmac");
		FUNC1(card, 2, response->mac, ETH_ALEN);
	} else {
		FUNC6(card->dev->dev_addr, response->mac);
	}

out:
	FUNC8(response);
	FUNC8(request);
	return rc;
}