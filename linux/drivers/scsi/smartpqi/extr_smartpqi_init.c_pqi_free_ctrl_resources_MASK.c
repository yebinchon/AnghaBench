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
struct pqi_ctrl_info {scalar_t__ iomem_base; int /*<<< orphan*/  error_buffer_dma_handle; scalar_t__ error_buffer; int /*<<< orphan*/  error_buffer_length; TYPE_1__* pci_dev; int /*<<< orphan*/  admin_queue_memory_base_dma_handle; scalar_t__ admin_queue_memory_base; int /*<<< orphan*/  admin_queue_memory_length; int /*<<< orphan*/  queue_memory_base_dma_handle; scalar_t__ queue_memory_base; int /*<<< orphan*/  queue_memory_length; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static void FUNC6(struct pqi_ctrl_info *ctrl_info)
{
	FUNC5(ctrl_info);
	FUNC4(ctrl_info);
	if (ctrl_info->queue_memory_base)
		FUNC0(&ctrl_info->pci_dev->dev,
			ctrl_info->queue_memory_length,
			ctrl_info->queue_memory_base,
			ctrl_info->queue_memory_base_dma_handle);
	if (ctrl_info->admin_queue_memory_base)
		FUNC0(&ctrl_info->pci_dev->dev,
			ctrl_info->admin_queue_memory_length,
			ctrl_info->admin_queue_memory_base,
			ctrl_info->admin_queue_memory_base_dma_handle);
	FUNC2(ctrl_info);
	if (ctrl_info->error_buffer)
		FUNC0(&ctrl_info->pci_dev->dev,
			ctrl_info->error_buffer_length,
			ctrl_info->error_buffer,
			ctrl_info->error_buffer_dma_handle);
	if (ctrl_info->iomem_base)
		FUNC1(ctrl_info);
	FUNC3(ctrl_info);
}