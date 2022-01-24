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
struct TYPE_3__ {struct pci_dev* pdev; } ;
struct qtnf_pcie_topaz_state {TYPE_2__* bda; TYPE_1__ base; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  bda_bootstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  QTN_BDA_FW_LOAD_RDY ; 
 int /*<<< orphan*/  QTN_FW_DL_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (struct qtnf_pcie_topaz_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int FUNC5 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct qtnf_pcie_topaz_state *ts,
				const char *fwname)
{
	const struct firmware *fw;
	struct pci_dev *pdev = ts->base.pdev;
	int ret;

	if (FUNC3(&ts->bda->bda_bootstate,
			    QTN_BDA_FW_LOAD_RDY,
			    QTN_FW_DL_TIMEOUT_MS)) {
		FUNC0("%s: card is not ready\n", fwname);
		return -1;
	}

	FUNC1("starting firmware upload: %s\n", fwname);

	ret = FUNC5(&fw, fwname, &pdev->dev);
	if (ret < 0) {
		FUNC0("%s: request_firmware error %d\n", fwname, ret);
		return -1;
	}

	ret = FUNC2(ts, fw->data, fw->size);
	FUNC4(fw);

	if (ret)
		FUNC0("%s: FW upload error\n", fwname);

	return ret;
}