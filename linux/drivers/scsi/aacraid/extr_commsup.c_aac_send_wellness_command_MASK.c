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
typedef  int u32 ;
struct sgmap64 {TYPE_2__* sg; void* count; } ;
struct fib {int dummy; } ;
struct aac_srb {int /*<<< orphan*/  sg; int /*<<< orphan*/ * cdb; void* count; void* cdb_size; scalar_t__ retry_limit; void* timeout; void* flags; scalar_t__ lun; void* id; void* channel; void* function; } ;
struct TYPE_4__ {int /*<<< orphan*/  virt_device_target; int /*<<< orphan*/  virt_device_bus; } ;
struct aac_dev {TYPE_3__* pdev; TYPE_1__ supplement_adapter_info; } ;
typedef  int dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {void* count; void** addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMIC_OUT ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FsaNormal ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SRBF_ExecuteScsi ; 
 int SRB_DataOut ; 
 int /*<<< orphan*/  ScsiPortCommand64 ; 
 int /*<<< orphan*/  WRITE_HOST_WELLNESS ; 
 struct fib* FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct fib*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct fib*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*,int) ; 
 scalar_t__ FUNC8 (struct fib*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct aac_dev *dev, char *wellness_str,
							u32 datasize)
{
	struct aac_srb *srbcmd;
	struct sgmap64 *sg64;
	dma_addr_t addr;
	char *dma_buf;
	struct fib *fibptr;
	int ret = -ENOMEM;
	u32 vbus, vid;

	fibptr = FUNC0(dev);
	if (!fibptr)
		goto out;

	dma_buf = FUNC6(&dev->pdev->dev, datasize, &addr,
				     GFP_KERNEL);
	if (!dma_buf)
		goto fib_free_out;

	FUNC3(fibptr);

	vbus = (u32)FUNC9(dev->supplement_adapter_info.virt_device_bus);
	vid = (u32)FUNC9(dev->supplement_adapter_info.virt_device_target);

	srbcmd = (struct aac_srb *)FUNC8(fibptr);

	srbcmd->function = FUNC5(SRBF_ExecuteScsi);
	srbcmd->channel = FUNC5(vbus);
	srbcmd->id = FUNC5(vid);
	srbcmd->lun = 0;
	srbcmd->flags = FUNC5(SRB_DataOut);
	srbcmd->timeout = FUNC5(10);
	srbcmd->retry_limit = 0;
	srbcmd->cdb_size = FUNC5(12);
	srbcmd->count = FUNC5(datasize);

	FUNC11(srbcmd->cdb, 0, sizeof(srbcmd->cdb));
	srbcmd->cdb[0] = BMIC_OUT;
	srbcmd->cdb[6] = WRITE_HOST_WELLNESS;
	FUNC10(dma_buf, (char *)wellness_str, datasize);

	sg64 = (struct sgmap64 *)&srbcmd->sg;
	sg64->count = FUNC5(1);
	sg64->sg[0].addr[1] = FUNC5((u32)(((addr) >> 16) >> 16));
	sg64->sg[0].addr[0] = FUNC5((u32)(addr & 0xffffffff));
	sg64->sg[0].count = FUNC5(datasize);

	ret = FUNC4(ScsiPortCommand64, fibptr, sizeof(struct aac_srb),
				FsaNormal, 1, 1, NULL, NULL);

	FUNC7(&dev->pdev->dev, datasize, dma_buf, addr);

	/*
	 * Do not set XferState to zero unless
	 * receives a response from F/W
	 */
	if (ret >= 0)
		FUNC1(fibptr);

	/*
	 * FIB should be freed only after
	 * getting the response from the F/W
	 */
	if (ret != -ERESTARTSYS)
		goto fib_free_out;

out:
	return ret;
fib_free_out:
	FUNC2(fibptr);
	goto out;
}