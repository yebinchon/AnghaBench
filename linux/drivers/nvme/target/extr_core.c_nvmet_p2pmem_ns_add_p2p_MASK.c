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
struct pci_dev {int dummy; } ;
struct nvmet_ns {int /*<<< orphan*/  nsid; int /*<<< orphan*/  device_path; scalar_t__ p2p_dev; int /*<<< orphan*/  use_p2pmem; } ;
struct nvmet_ctrl {int /*<<< orphan*/  p2p_ns_map; struct device* p2p_client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device**) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct device* FUNC2 (struct nvmet_ns*) ; 
 struct pci_dev* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (scalar_t__,struct device*,int) ; 
 struct pci_dev* FUNC7 (struct device**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pci_dev*) ; 

__attribute__((used)) static void FUNC11(struct nvmet_ctrl *ctrl,
				    struct nvmet_ns *ns)
{
	struct device *clients[2];
	struct pci_dev *p2p_dev;
	int ret;

	if (!ctrl->p2p_client || !ns->use_p2pmem)
		return;

	if (ns->p2p_dev) {
		ret = FUNC6(ns->p2p_dev, ctrl->p2p_client, true);
		if (ret < 0)
			return;

		p2p_dev = FUNC3(ns->p2p_dev);
	} else {
		clients[0] = ctrl->p2p_client;
		clients[1] = FUNC2(ns);

		p2p_dev = FUNC7(clients, FUNC0(clients));
		if (!p2p_dev) {
			FUNC8("no peer-to-peer memory is available that's supported by %s and %s\n",
			       FUNC1(ctrl->p2p_client), ns->device_path);
			return;
		}
	}

	ret = FUNC10(&ctrl->p2p_ns_map, ns->nsid, p2p_dev);
	if (ret < 0)
		FUNC4(p2p_dev);

	FUNC9("using p2pmem on %s for nsid %d\n", FUNC5(p2p_dev),
		ns->nsid);
}