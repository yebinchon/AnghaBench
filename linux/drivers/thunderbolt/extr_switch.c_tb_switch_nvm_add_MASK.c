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
typedef  int /*<<< orphan*/  val ;
typedef  int u32 ;
struct tb_switch_nvm {int major; int minor; int /*<<< orphan*/  id; struct nvmem_device* active; struct nvmem_device* non_active; } ;
struct tb_switch {int generation; struct tb_switch_nvm* nvm; int /*<<< orphan*/  no_nvm_upgrade; int /*<<< orphan*/  dma_port; int /*<<< orphan*/  safe_mode; } ;
struct nvmem_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct nvmem_device*) ; 
 int /*<<< orphan*/  NVM_FLASH_SIZE ; 
 int NVM_MAX_SIZE ; 
 int /*<<< orphan*/  NVM_VERSION ; 
 int FUNC1 (struct nvmem_device*) ; 
 int SZ_16K ; 
 int SZ_1M ; 
 int SZ_8K ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_switch_nvm*) ; 
 struct tb_switch_nvm* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvm_ida ; 
 int /*<<< orphan*/  FUNC7 (struct nvmem_device*) ; 
 struct nvmem_device* FUNC8 (struct tb_switch*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC9(struct tb_switch *sw)
{
	struct nvmem_device *nvm_dev;
	struct tb_switch_nvm *nvm;
	u32 val;
	int ret;

	if (!sw->dma_port)
		return 0;

	nvm = FUNC6(sizeof(*nvm), GFP_KERNEL);
	if (!nvm)
		return -ENOMEM;

	nvm->id = FUNC3(&nvm_ida, 0, 0, GFP_KERNEL);

	/*
	 * If the switch is in safe-mode the only accessible portion of
	 * the NVM is the non-active one where userspace is expected to
	 * write new functional NVM.
	 */
	if (!sw->safe_mode) {
		u32 nvm_size, hdr_size;

		ret = FUNC2(sw->dma_port, NVM_FLASH_SIZE, &val,
					  sizeof(val));
		if (ret)
			goto err_ida;

		hdr_size = sw->generation < 3 ? SZ_8K : SZ_16K;
		nvm_size = (SZ_1M << (val & 7)) / 8;
		nvm_size = (nvm_size - hdr_size) / 2;

		ret = FUNC2(sw->dma_port, NVM_VERSION, &val,
					  sizeof(val));
		if (ret)
			goto err_ida;

		nvm->major = val >> 16;
		nvm->minor = val >> 8;

		nvm_dev = FUNC8(sw, nvm->id, nvm_size, true);
		if (FUNC0(nvm_dev)) {
			ret = FUNC1(nvm_dev);
			goto err_ida;
		}
		nvm->active = nvm_dev;
	}

	if (!sw->no_nvm_upgrade) {
		nvm_dev = FUNC8(sw, nvm->id, NVM_MAX_SIZE, false);
		if (FUNC0(nvm_dev)) {
			ret = FUNC1(nvm_dev);
			goto err_nvm_active;
		}
		nvm->non_active = nvm_dev;
	}

	sw->nvm = nvm;
	return 0;

err_nvm_active:
	if (nvm->active)
		FUNC7(nvm->active);
err_ida:
	FUNC4(&nvm_ida, nvm->id);
	FUNC5(nvm);

	return ret;
}