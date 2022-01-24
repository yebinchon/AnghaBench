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
struct pci_dev {int dummy; } ;
struct nvmet_req {int /*<<< orphan*/  sg; int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  transfer_len; struct pci_dev* p2p_dev; TYPE_3__* sq; TYPE_2__* ns; } ;
struct TYPE_6__ {scalar_t__ qid; TYPE_1__* ctrl; } ;
struct TYPE_5__ {int /*<<< orphan*/  nsid; } ;
struct TYPE_4__ {int /*<<< orphan*/  p2p_ns_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_P2PDMA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct nvmet_req *req)
{
	struct pci_dev *p2p_dev = NULL;

	if (FUNC0(CONFIG_PCI_P2PDMA)) {
		if (req->sq->ctrl && req->ns)
			p2p_dev = FUNC2(&req->sq->ctrl->p2p_ns_map,
						    req->ns->nsid);

		req->p2p_dev = NULL;
		if (req->sq->qid && p2p_dev) {
			req->sg = FUNC1(p2p_dev, &req->sg_cnt,
						       req->transfer_len);
			if (req->sg) {
				req->p2p_dev = p2p_dev;
				return 0;
			}
		}

		/*
		 * If no P2P memory was available we fallback to using
		 * regular memory
		 */
	}

	req->sg = FUNC3(req->transfer_len, GFP_KERNEL, &req->sg_cnt);
	if (!req->sg)
		return -ENOMEM;

	return 0;
}