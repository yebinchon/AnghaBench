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
struct tcp_connect_and_offload_out {int /*<<< orphan*/  connection_handle; } ;
struct tcp_connect_and_offload_in_v1 {int dummy; } ;
struct tcp_connect_and_offload_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct iscsi_endpoint {struct beiscsi_endpoint* dd_data; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct beiscsi_hba {TYPE_2__ ctrl; struct iscsi_endpoint** ep_array; } ;
struct beiscsi_endpoint {scalar_t__ ep_cid; int cid_vld; int /*<<< orphan*/  fw_handle; struct beiscsi_hba* phba; } ;
struct be_dma_mem {unsigned int size; int /*<<< orphan*/  dma; int /*<<< orphan*/ * va; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BEISCSI_LOG_CONFIG ; 
 int BEISCSI_LOG_MBOX ; 
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ BE_INVALID_CID ; 
 int EAGAIN ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_endpoint*) ; 
 scalar_t__ FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*,int /*<<< orphan*/ ,int,char*,...) ; 
 int FUNC4 (struct beiscsi_hba*,unsigned int,int /*<<< orphan*/ *,struct be_dma_mem*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC9 (struct beiscsi_hba*,struct sockaddr*,struct beiscsi_endpoint*,struct be_dma_mem*) ; 

__attribute__((used)) static int FUNC10(struct iscsi_endpoint *ep,
			     struct sockaddr *src_addr,
			     struct sockaddr *dst_addr, int non_blocking)
{
	struct beiscsi_endpoint *beiscsi_ep = ep->dd_data;
	struct beiscsi_hba *phba = beiscsi_ep->phba;
	struct tcp_connect_and_offload_out *ptcpcnct_out;
	struct be_dma_mem nonemb_cmd;
	unsigned int tag, req_memsize;
	int ret = -ENOMEM;

	FUNC3(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
		    "BS_%d : In beiscsi_open_conn\n");

	beiscsi_ep->ep_cid = FUNC2(phba);
	if (beiscsi_ep->ep_cid == BE_INVALID_CID) {
		FUNC3(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
			    "BS_%d : No free cid available\n");
		return ret;
	}

	FUNC3(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
		    "BS_%d : In beiscsi_open_conn, ep_cid=%d\n",
		    beiscsi_ep->ep_cid);

	phba->ep_array[FUNC0
		       (beiscsi_ep->ep_cid)] = ep;

	beiscsi_ep->cid_vld = 0;

	if (FUNC7(phba))
		req_memsize = sizeof(struct tcp_connect_and_offload_in);
	else
		req_memsize = sizeof(struct tcp_connect_and_offload_in_v1);

	nonemb_cmd.va = FUNC5(&phba->ctrl.pdev->dev,
				req_memsize,
				&nonemb_cmd.dma, GFP_KERNEL);
	if (nonemb_cmd.va == NULL) {

		FUNC3(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
			    "BS_%d : Failed to allocate memory for"
			    " mgmt_open_connection\n");

		FUNC1(beiscsi_ep);
		return -ENOMEM;
	}
	nonemb_cmd.size = req_memsize;
	FUNC8(nonemb_cmd.va, 0, nonemb_cmd.size);
	tag = FUNC9(phba, dst_addr, beiscsi_ep, &nonemb_cmd);
	if (!tag) {
		FUNC3(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
			    "BS_%d : mgmt_open_connection Failed for cid=%d\n",
			    beiscsi_ep->ep_cid);

		FUNC6(&phba->ctrl.pdev->dev, nonemb_cmd.size,
				    nonemb_cmd.va, nonemb_cmd.dma);
		FUNC1(beiscsi_ep);
		return -EAGAIN;
	}

	ret = FUNC4(phba, tag, NULL, &nonemb_cmd);
	if (ret) {
		FUNC3(phba, KERN_ERR,
			    BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
			    "BS_%d : mgmt_open_connection Failed");

		if (ret != -EBUSY)
			FUNC6(&phba->ctrl.pdev->dev,
					nonemb_cmd.size, nonemb_cmd.va,
					nonemb_cmd.dma);

		FUNC1(beiscsi_ep);
		return ret;
	}

	ptcpcnct_out = (struct tcp_connect_and_offload_out *)nonemb_cmd.va;
	beiscsi_ep = ep->dd_data;
	beiscsi_ep->fw_handle = ptcpcnct_out->connection_handle;
	beiscsi_ep->cid_vld = 1;
	FUNC3(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
		    "BS_%d : mgmt_open_connection Success\n");

	FUNC6(&phba->ctrl.pdev->dev, nonemb_cmd.size,
			    nonemb_cmd.va, nonemb_cmd.dma);
	return 0;
}