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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct pqi_sg_descriptor {int /*<<< orphan*/  address; int /*<<< orphan*/  flags; int /*<<< orphan*/  length; } ;
struct pqi_ofa_memory {int /*<<< orphan*/  bytes_allocated; struct pqi_sg_descriptor* sg_descriptor; int /*<<< orphan*/  num_memory_descriptors; } ;
struct pqi_ctrl_info {int /*<<< orphan*/ * pqi_ofa_chunk_virt_addr; struct pqi_ofa_memory* pqi_ofa_mem_virt_addr; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int CISS_SG_LAST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct pqi_ctrl_info *ctrl_info,
	u32 total_size, u32 chunk_size)
{
	u32 sg_count;
	u32 size;
	int i;
	struct pqi_sg_descriptor *mem_descriptor = NULL;
	struct device *dev;
	struct pqi_ofa_memory *ofap;

	dev = &ctrl_info->pci_dev->dev;

	sg_count = (total_size + chunk_size - 1);
	sg_count /= chunk_size;

	ofap = ctrl_info->pqi_ofa_mem_virt_addr;

	if (sg_count*chunk_size < total_size)
		goto out;

	ctrl_info->pqi_ofa_chunk_virt_addr =
				FUNC3(sg_count, sizeof(void *), GFP_KERNEL);
	if (!ctrl_info->pqi_ofa_chunk_virt_addr)
		goto out;

	for (size = 0, i = 0; size < total_size; size += chunk_size, i++) {
		dma_addr_t dma_handle;

		ctrl_info->pqi_ofa_chunk_virt_addr[i] =
			FUNC0(dev, chunk_size, &dma_handle,
					   GFP_KERNEL);

		if (!ctrl_info->pqi_ofa_chunk_virt_addr[i])
			break;

		mem_descriptor = &ofap->sg_descriptor[i];
		FUNC7 ((u64) dma_handle, &mem_descriptor->address);
		FUNC6 (chunk_size, &mem_descriptor->length);
	}

	if (!size || size < total_size)
		goto out_free_chunks;

	FUNC6(CISS_SG_LAST, &mem_descriptor->flags);
	FUNC5(sg_count, &ofap->num_memory_descriptors);
	FUNC6(size, &ofap->bytes_allocated);

	return 0;

out_free_chunks:
	while (--i >= 0) {
		mem_descriptor = &ofap->sg_descriptor[i];
		FUNC1(dev, chunk_size,
				ctrl_info->pqi_ofa_chunk_virt_addr[i],
				FUNC2(&mem_descriptor->address));
	}
	FUNC4(ctrl_info->pqi_ofa_chunk_virt_addr);

out:
	FUNC6 (0, &ofap->bytes_allocated);
	return -ENOMEM;
}