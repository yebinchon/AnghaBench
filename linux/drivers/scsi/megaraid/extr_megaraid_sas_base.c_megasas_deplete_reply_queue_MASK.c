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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct megasas_instance {int mfiStatus; scalar_t__ disableOnlineCtrlReset; int /*<<< orphan*/  isr_tasklet; TYPE_2__* pdev; int /*<<< orphan*/  work_init; int /*<<< orphan*/  adprecovery; int /*<<< orphan*/  fw_outstanding; scalar_t__ issuepend_done; TYPE_1__* instancet; int /*<<< orphan*/ * consumer; int /*<<< orphan*/  msix_vectors; int /*<<< orphan*/  reg_set; } ;
struct TYPE_4__ {scalar_t__ device; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int (* check_reset ) (struct megasas_instance*,int /*<<< orphan*/ ) ;int (* clear_intr ) (struct megasas_instance*) ;int (* read_fw_status_reg ) (struct megasas_instance*) ;int /*<<< orphan*/  (* disable_intr ) (struct megasas_instance*) ;} ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  MEGASAS_ADPRESET_INPROG_SIGN ; 
 int /*<<< orphan*/  MEGASAS_ADPRESET_SM_INFAULT ; 
 int MFI_INTR_FLAG_FIRMWARE_STATE_CHANGE ; 
 int MFI_STATE_FAULT ; 
 int MFI_STATE_MASK ; 
 scalar_t__ PCI_DEVICE_ID_DELL_PERC5 ; 
 scalar_t__ PCI_DEVICE_ID_LSI_SAS1064R ; 
 scalar_t__ PCI_DEVICE_ID_LSI_VERDE_ZCR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct megasas_instance*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct megasas_instance*) ; 
 int FUNC8 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC9 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct megasas_instance *instance,
					u8 alt_status)
{
	u32 mfiStatus;
	u32 fw_state;

	if ((mfiStatus = instance->instancet->check_reset(instance,
					instance->reg_set)) == 1) {
		return IRQ_HANDLED;
	}

	mfiStatus = instance->instancet->clear_intr(instance);
	if (mfiStatus == 0) {
		/* Hardware may not set outbound_intr_status in MSI-X mode */
		if (!instance->msix_vectors)
			return IRQ_NONE;
	}

	instance->mfiStatus = mfiStatus;

	if ((mfiStatus & MFI_INTR_FLAG_FIRMWARE_STATE_CHANGE)) {
		fw_state = instance->instancet->read_fw_status_reg(
				instance) & MFI_STATE_MASK;

		if (fw_state != MFI_STATE_FAULT) {
			FUNC3(&instance->pdev->dev, "fw state:%x\n",
						fw_state);
		}

		if ((fw_state == MFI_STATE_FAULT) &&
				(instance->disableOnlineCtrlReset == 0)) {
			FUNC3(&instance->pdev->dev, "wait adp restart\n");

			if ((instance->pdev->device ==
					PCI_DEVICE_ID_LSI_SAS1064R) ||
				(instance->pdev->device ==
					PCI_DEVICE_ID_DELL_PERC5) ||
				(instance->pdev->device ==
					PCI_DEVICE_ID_LSI_VERDE_ZCR)) {

				*instance->consumer =
					FUNC2(MEGASAS_ADPRESET_INPROG_SIGN);
			}


			instance->instancet->disable_intr(instance);
			FUNC1(&instance->adprecovery, MEGASAS_ADPRESET_SM_INFAULT);
			instance->issuepend_done = 0;

			FUNC1(&instance->fw_outstanding, 0);
			FUNC4(instance);

			FUNC3(&instance->pdev->dev, "fwState=%x, stage:%d\n",
					fw_state, FUNC0(&instance->adprecovery));

			FUNC5(&instance->work_init);
			return IRQ_HANDLED;

		} else {
			FUNC3(&instance->pdev->dev, "fwstate:%x, dis_OCR=%x\n",
				fw_state, instance->disableOnlineCtrlReset);
		}
	}

	FUNC10(&instance->isr_tasklet);
	return IRQ_HANDLED;
}