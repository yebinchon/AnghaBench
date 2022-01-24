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
typedef  unsigned long u64 ;
struct sis_sync_cmd_params {int* mailbox; } ;
struct sis_base_struct {int /*<<< orphan*/  error_buffer_num_elements; int /*<<< orphan*/  error_buffer_element_length; int /*<<< orphan*/  error_buffer_paddr_high; int /*<<< orphan*/  error_buffer_paddr_low; int /*<<< orphan*/  revision; } ;
struct pqi_ctrl_info {void* max_io_slots; TYPE_1__* pci_dev; scalar_t__ error_buffer_dma_handle; } ;
typedef  int /*<<< orphan*/  params ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* PQI_ERROR_BUFFER_ELEMENT_LENGTH ; 
 struct sis_base_struct* FUNC0 (void*,scalar_t__) ; 
 scalar_t__ SIS_BASE_STRUCT_ALIGNMENT ; 
 void* SIS_BASE_STRUCT_REVISION ; 
 int /*<<< orphan*/  SIS_CMD_INIT_BASE_STRUCT_ADDRESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct sis_base_struct*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct sis_sync_cmd_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct pqi_ctrl_info*,int /*<<< orphan*/ ,struct sis_sync_cmd_params*) ; 
 void* FUNC10 (unsigned long) ; 

int FUNC11(struct pqi_ctrl_info *ctrl_info)
{
	int rc;
	void *base_struct_unaligned;
	struct sis_base_struct *base_struct;
	struct sis_sync_cmd_params params;
	unsigned long error_buffer_paddr;
	dma_addr_t bus_address;

	base_struct_unaligned = FUNC5(sizeof(*base_struct)
		+ SIS_BASE_STRUCT_ALIGNMENT - 1, GFP_KERNEL);
	if (!base_struct_unaligned)
		return -ENOMEM;

	base_struct = FUNC0(base_struct_unaligned,
		SIS_BASE_STRUCT_ALIGNMENT);
	error_buffer_paddr = (unsigned long)ctrl_info->error_buffer_dma_handle;

	FUNC8(SIS_BASE_STRUCT_REVISION, &base_struct->revision);
	FUNC8(FUNC6(error_buffer_paddr),
		&base_struct->error_buffer_paddr_low);
	FUNC8(FUNC10(error_buffer_paddr),
		&base_struct->error_buffer_paddr_high);
	FUNC8(PQI_ERROR_BUFFER_ELEMENT_LENGTH,
		&base_struct->error_buffer_element_length);
	FUNC8(ctrl_info->max_io_slots,
		&base_struct->error_buffer_num_elements);

	bus_address = FUNC1(&ctrl_info->pci_dev->dev, base_struct,
		sizeof(*base_struct), DMA_TO_DEVICE);
	if (FUNC2(&ctrl_info->pci_dev->dev, bus_address)) {
		rc = -ENOMEM;
		goto out;
	}

	FUNC7(&params, 0, sizeof(params));
	params.mailbox[1] = FUNC6((u64)bus_address);
	params.mailbox[2] = FUNC10((u64)bus_address);
	params.mailbox[3] = sizeof(*base_struct);

	rc = FUNC9(ctrl_info, SIS_CMD_INIT_BASE_STRUCT_ADDRESS,
		&params);

	FUNC3(&ctrl_info->pci_dev->dev, bus_address,
			sizeof(*base_struct), DMA_TO_DEVICE);
out:
	FUNC4(base_struct_unaligned);

	return rc;
}