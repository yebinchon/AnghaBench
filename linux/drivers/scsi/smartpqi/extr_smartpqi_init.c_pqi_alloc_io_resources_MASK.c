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
struct pqi_io_request {unsigned int index; int /*<<< orphan*/  sg_chain_buffer_dma_handle; void* sg_chain_buffer; int /*<<< orphan*/  iu; } ;
struct pqi_ctrl_info {unsigned int max_io_slots; size_t sg_chain_buffer_length; TYPE_1__* pci_dev; int /*<<< orphan*/  max_inbound_iu_length; struct pqi_io_request* io_request_pool; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 void* FUNC1 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pqi_io_request* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static int FUNC5(struct pqi_ctrl_info *ctrl_info)
{
	unsigned int i;
	void *sg_chain_buffer;
	size_t sg_chain_buffer_length;
	dma_addr_t sg_chain_buffer_dma_handle;
	struct device *dev;
	struct pqi_io_request *io_request;

	ctrl_info->io_request_pool =
		FUNC2(ctrl_info->max_io_slots,
			sizeof(ctrl_info->io_request_pool[0]), GFP_KERNEL);

	if (!ctrl_info->io_request_pool) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"failed to allocate I/O request pool\n");
		goto error;
	}

	dev = &ctrl_info->pci_dev->dev;
	sg_chain_buffer_length = ctrl_info->sg_chain_buffer_length;
	io_request = ctrl_info->io_request_pool;

	for (i = 0; i < ctrl_info->max_io_slots; i++) {
		io_request->iu =
			FUNC3(ctrl_info->max_inbound_iu_length, GFP_KERNEL);

		if (!io_request->iu) {
			FUNC0(&ctrl_info->pci_dev->dev,
				"failed to allocate IU buffers\n");
			goto error;
		}

		sg_chain_buffer = FUNC1(dev,
			sg_chain_buffer_length, &sg_chain_buffer_dma_handle,
			GFP_KERNEL);

		if (!sg_chain_buffer) {
			FUNC0(&ctrl_info->pci_dev->dev,
				"failed to allocate PQI scatter-gather chain buffers\n");
			goto error;
		}

		io_request->index = i;
		io_request->sg_chain_buffer = sg_chain_buffer;
		io_request->sg_chain_buffer_dma_handle =
			sg_chain_buffer_dma_handle;
		io_request++;
	}

	return 0;

error:
	FUNC4(ctrl_info);

	return -ENOMEM;
}