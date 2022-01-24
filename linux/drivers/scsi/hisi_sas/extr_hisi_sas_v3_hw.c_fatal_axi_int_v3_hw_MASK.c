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
typedef  int u32 ;
struct pci_dev {int revision; } ;
struct hisi_sas_hw_error {int irq_msk; int msk; scalar_t__ msg; scalar_t__ reg; struct hisi_sas_hw_error* sub; } ;
struct hisi_sas_device {int /*<<< orphan*/  completion; } ;
struct hisi_hba {struct hisi_sas_device* devices; int /*<<< orphan*/  rst_work; int /*<<< orphan*/  wq; struct pci_dev* pci_dev; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ AM_CTRL_GLOBAL ; 
 int AM_CTRL_SHUTDOWN_REQ_MSK ; 
 int FUNC0 (struct hisi_sas_hw_error*) ; 
 scalar_t__ AXI_MASTER_CFG_BASE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENT_INT_SRC3 ; 
 int /*<<< orphan*/  ENT_INT_SRC3_ITC_INT_OFF ; 
 scalar_t__ ENT_INT_SRC_MSK3 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ ITCT_CLR ; 
 int ITCT_DEV_MSK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,scalar_t__,int) ; 
 struct hisi_sas_hw_error* fatal_axi_error ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_hba*) ; 
 int FUNC6 (struct hisi_hba*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct hisi_hba*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq_no, void *p)
{
	u32 irq_value, irq_msk;
	struct hisi_hba *hisi_hba = p;
	struct device *dev = hisi_hba->dev;
	struct pci_dev *pdev = hisi_hba->pci_dev;
	int i;

	irq_msk = FUNC6(hisi_hba, ENT_INT_SRC_MSK3);
	FUNC7(hisi_hba, ENT_INT_SRC_MSK3, irq_msk | 0x1df00);

	irq_value = FUNC6(hisi_hba, ENT_INT_SRC3);
	irq_value &= ~irq_msk;

	for (i = 0; i < FUNC0(fatal_axi_error); i++) {
		const struct hisi_sas_hw_error *error = &fatal_axi_error[i];

		if (!(irq_value & error->irq_msk))
			continue;

		if (error->sub) {
			const struct hisi_sas_hw_error *sub = error->sub;
			u32 err_value = FUNC6(hisi_hba, error->reg);

			for (; sub->msk || sub->msg; sub++) {
				if (!(err_value & sub->msk))
					continue;

				FUNC4(dev, "%s error (0x%x) found!\n",
					sub->msg, irq_value);
				FUNC8(hisi_hba->wq, &hisi_hba->rst_work);
			}
		} else {
			FUNC4(dev, "%s error (0x%x) found!\n",
				error->msg, irq_value);
			FUNC8(hisi_hba->wq, &hisi_hba->rst_work);
		}

		if (pdev->revision < 0x21) {
			u32 reg_val;

			reg_val = FUNC6(hisi_hba,
						  AXI_MASTER_CFG_BASE +
						  AM_CTRL_GLOBAL);
			reg_val |= AM_CTRL_SHUTDOWN_REQ_MSK;
			FUNC7(hisi_hba, AXI_MASTER_CFG_BASE +
					 AM_CTRL_GLOBAL, reg_val);
		}
	}

	FUNC5(hisi_hba);

	if (irq_value & FUNC1(ENT_INT_SRC3_ITC_INT_OFF)) {
		u32 reg_val = FUNC6(hisi_hba, ITCT_CLR);
		u32 dev_id = reg_val & ITCT_DEV_MSK;
		struct hisi_sas_device *sas_dev =
				&hisi_hba->devices[dev_id];

		FUNC7(hisi_hba, ITCT_CLR, 0);
		FUNC3(dev, "clear ITCT ok\n");
		FUNC2(sas_dev->completion);
	}

	FUNC7(hisi_hba, ENT_INT_SRC3, irq_value & 0x1df00);
	FUNC7(hisi_hba, ENT_INT_SRC_MSK3, irq_msk);

	return IRQ_HANDLED;
}