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
struct pqi_ctrl_info {int /*<<< orphan*/  error_buffer; int /*<<< orphan*/  error_buffer_dma_handle; int /*<<< orphan*/  error_buffer_length; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct pqi_ctrl_info *ctrl_info)
{
	ctrl_info->error_buffer = FUNC0(&ctrl_info->pci_dev->dev,
						     ctrl_info->error_buffer_length,
						     &ctrl_info->error_buffer_dma_handle,
						     GFP_KERNEL);

	if (!ctrl_info->error_buffer)
		return -ENOMEM;

	return 0;
}