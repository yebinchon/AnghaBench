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
struct q6v5 {int /*<<< orphan*/  dev; scalar_t__ rmb_base; } ;
struct firmware {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long DMA_ATTR_FORCE_CONTIGUOUS ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  QCOM_SCM_VMID_HLOS ; 
 int /*<<< orphan*/  RMB_CMD_META_DATA_READY ; 
 scalar_t__ RMB_MBA_COMMAND_REG ; 
 int /*<<< orphan*/  RMB_MBA_META_DATA_AUTH_SUCCESS ; 
 scalar_t__ RMB_PMI_META_DATA_REG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,void*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,size_t) ; 
 int FUNC9 (struct q6v5*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct q6v5*,int*,int,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC11 (struct firmware const*,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct q6v5 *qproc, const struct firmware *fw)
{
	unsigned long dma_attrs = DMA_ATTR_FORCE_CONTIGUOUS;
	dma_addr_t phys;
	void *metadata;
	int mdata_perm;
	int xferop_ret;
	size_t size;
	void *ptr;
	int ret;

	metadata = FUNC11(fw, &size);
	if (FUNC1(metadata))
		return FUNC2(metadata);

	ptr = FUNC5(qproc->dev, size, &phys, GFP_KERNEL, dma_attrs);
	if (!ptr) {
		FUNC7(metadata);
		FUNC3(qproc->dev, "failed to allocate mdt buffer\n");
		return -ENOMEM;
	}

	FUNC8(ptr, metadata, size);

	/* Hypervisor mapping to access metadata by modem */
	mdata_perm = FUNC0(QCOM_SCM_VMID_HLOS);
	ret = FUNC10(qproc, &mdata_perm, true, phys, size);
	if (ret) {
		FUNC3(qproc->dev,
			"assigning Q6 access to metadata failed: %d\n", ret);
		ret = -EAGAIN;
		goto free_dma_attrs;
	}

	FUNC12(phys, qproc->rmb_base + RMB_PMI_META_DATA_REG);
	FUNC12(RMB_CMD_META_DATA_READY, qproc->rmb_base + RMB_MBA_COMMAND_REG);

	ret = FUNC9(qproc, RMB_MBA_META_DATA_AUTH_SUCCESS, 1000);
	if (ret == -ETIMEDOUT)
		FUNC3(qproc->dev, "MPSS header authentication timed out\n");
	else if (ret < 0)
		FUNC3(qproc->dev, "MPSS header authentication failed: %d\n", ret);

	/* Metadata authentication done, remove modem access */
	xferop_ret = FUNC10(qproc, &mdata_perm, false, phys, size);
	if (xferop_ret)
		FUNC4(qproc->dev,
			 "mdt buffer not reclaimed system may become unstable\n");

free_dma_attrs:
	FUNC6(qproc->dev, size, ptr, phys, dma_attrs);
	FUNC7(metadata);

	return ret < 0 ? ret : 0;
}