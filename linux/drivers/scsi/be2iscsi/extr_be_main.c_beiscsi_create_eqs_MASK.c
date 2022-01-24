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
struct hwi_context_memory {TYPE_2__* be_eq; } ;
struct TYPE_4__ {int num_eq_entries; } ;
struct beiscsi_hba {int num_cpus; TYPE_3__* pcidev; int /*<<< orphan*/  ctrl; TYPE_1__ params; } ;
struct be_dma_mem {int /*<<< orphan*/  dma; void* va; } ;
struct be_queue_info {struct be_dma_mem dma_mem; int /*<<< orphan*/  id; } ;
struct be_eq_entry {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; scalar_t__ msix_enabled; } ;
struct TYPE_5__ {struct be_queue_info q; struct beiscsi_hba* phba; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_EQ_DELAY_DEF ; 
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 unsigned int FUNC0 (int) ; 
 unsigned int PAGE_SIZE ; 
 int FUNC1 (struct be_queue_info*,int,int,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct be_queue_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC4 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct beiscsi_hba *phba,
			     struct hwi_context_memory *phwi_context)
{
	int ret = -ENOMEM, eq_for_mcc;
	unsigned int i, num_eq_pages;
	struct be_queue_info *eq;
	struct be_dma_mem *mem;
	void *eq_vaddress;
	dma_addr_t paddr;

	num_eq_pages = FUNC0(phba->params.num_eq_entries * \
				      sizeof(struct be_eq_entry));

	if (phba->pcidev->msix_enabled)
		eq_for_mcc = 1;
	else
		eq_for_mcc = 0;
	for (i = 0; i < (phba->num_cpus + eq_for_mcc); i++) {
		eq = &phwi_context->be_eq[i].q;
		mem = &eq->dma_mem;
		phwi_context->be_eq[i].phba = phba;
		eq_vaddress = FUNC4(&phba->pcidev->dev,
						   num_eq_pages * PAGE_SIZE,
						   &paddr, GFP_KERNEL);
		if (!eq_vaddress) {
			ret = -ENOMEM;
			goto create_eq_error;
		}

		mem->va = eq_vaddress;
		ret = FUNC1(eq, phba->params.num_eq_entries,
				    sizeof(struct be_eq_entry), eq_vaddress);
		if (ret) {
			FUNC3(phba, KERN_ERR, BEISCSI_LOG_INIT,
				    "BM_%d : be_fill_queue Failed for EQ\n");
			goto create_eq_error;
		}

		mem->dma = paddr;
		ret = FUNC2(&phba->ctrl, eq,
					    BEISCSI_EQ_DELAY_DEF);
		if (ret) {
			FUNC3(phba, KERN_ERR, BEISCSI_LOG_INIT,
				    "BM_%d : beiscsi_cmd_eq_create"
				    "Failed for EQ\n");
			goto create_eq_error;
		}

		FUNC3(phba, KERN_INFO, BEISCSI_LOG_INIT,
			    "BM_%d : eqid = %d\n",
			    phwi_context->be_eq[i].q.id);
	}
	return 0;

create_eq_error:
	for (i = 0; i < (phba->num_cpus + eq_for_mcc); i++) {
		eq = &phwi_context->be_eq[i].q;
		mem = &eq->dma_mem;
		if (mem->va)
			FUNC5(&phba->pcidev->dev, num_eq_pages
					    * PAGE_SIZE,
					    mem->va, mem->dma);
	}
	return ret;
}