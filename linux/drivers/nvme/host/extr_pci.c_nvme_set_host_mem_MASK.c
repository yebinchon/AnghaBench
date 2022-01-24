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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  device; int /*<<< orphan*/  admin_q; int /*<<< orphan*/  page_size; } ;
struct nvme_dev {int host_mem_size; int nr_host_mem_descs; TYPE_2__ ctrl; int /*<<< orphan*/  host_mem_descs_dma; } ;
struct TYPE_3__ {void* dword15; void* dword14; void* dword13; void* dword12; void* dword11; void* fid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ features; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int NVME_FEAT_HOST_MEM_BUF ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_admin_set_features ; 
 int FUNC5 (int /*<<< orphan*/ ,struct nvme_command*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nvme_dev *dev, u32 bits)
{
	u64 dma_addr = dev->host_mem_descs_dma;
	struct nvme_command c;
	int ret;

	FUNC4(&c, 0, sizeof(c));
	c.features.opcode	= nvme_admin_set_features;
	c.features.fid		= FUNC0(NVME_FEAT_HOST_MEM_BUF);
	c.features.dword11	= FUNC0(bits);
	c.features.dword12	= FUNC0(dev->host_mem_size >>
					      FUNC2(dev->ctrl.page_size));
	c.features.dword13	= FUNC0(FUNC3(dma_addr));
	c.features.dword14	= FUNC0(FUNC6(dma_addr));
	c.features.dword15	= FUNC0(dev->nr_host_mem_descs);

	ret = FUNC5(dev->ctrl.admin_q, &c, NULL, 0);
	if (ret) {
		FUNC1(dev->ctrl.device,
			 "failed to set host mem (err %d, flags %#x).\n",
			 ret, bits);
	}
	return ret;
}