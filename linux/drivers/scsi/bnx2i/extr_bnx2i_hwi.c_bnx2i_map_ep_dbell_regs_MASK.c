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
typedef  int u32 ;
struct TYPE_3__ {void* ctx_base; } ;
struct bnx2i_endpoint {TYPE_1__ qp; TYPE_2__* hba; } ;
typedef  scalar_t__ resource_size_t ;
struct TYPE_4__ {scalar_t__ mail_queue_access; scalar_t__ reg_base; int /*<<< orphan*/  cnic_dev_type; int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int BNX2I_570X_PAGE_SIZE_DEFAULT ; 
 scalar_t__ BNX2I_MQ_BIN_MODE ; 
 int /*<<< orphan*/  BNX2I_NX2_DEV_5709 ; 
 int /*<<< orphan*/  BNX2I_NX2_DEV_57710 ; 
 int BNX2X_DB_SHIFT ; 
 int /*<<< orphan*/  BNX2X_DOORBELL_PCI_BAR ; 
 int /*<<< orphan*/  BNX2_MQ_CONFIG2 ; 
 int BNX2_MQ_CONFIG2_CONT_SZ ; 
 int BNX2_MQ_CONFIG2_FIRST_L4L5 ; 
 int /*<<< orphan*/  CNIC_ARM_CQE ; 
 int CTX_OFFSET ; 
 int ENOMEM ; 
 int MAX_CID_CNT ; 
 int MB_KERNEL_CTX_SIZE ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2i_endpoint*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bnx2i_endpoint*) ; 
 void* FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct bnx2i_endpoint *ep)
{
	u32 cid_num;
	u32 reg_off;
	u32 first_l4l5;
	u32 ctx_sz;
	u32 config2;
	resource_size_t reg_base;

	cid_num = FUNC2(ep);

	if (FUNC5(BNX2I_NX2_DEV_57710, &ep->hba->cnic_dev_type)) {
		reg_base = FUNC4(ep->hba->pcidev,
					      BNX2X_DOORBELL_PCI_BAR);
		reg_off = (1 << BNX2X_DB_SHIFT) * (cid_num & 0x1FFFF);
		ep->qp.ctx_base = FUNC3(reg_base + reg_off, 4);
		if (!ep->qp.ctx_base)
			return -ENOMEM;
		goto arm_cq;
	}

	if ((FUNC5(BNX2I_NX2_DEV_5709, &ep->hba->cnic_dev_type)) &&
	    (ep->hba->mail_queue_access == BNX2I_MQ_BIN_MODE)) {
		config2 = FUNC0(ep->hba, BNX2_MQ_CONFIG2);
		first_l4l5 = config2 & BNX2_MQ_CONFIG2_FIRST_L4L5;
		ctx_sz = (config2 & BNX2_MQ_CONFIG2_CONT_SZ) >> 3;
		if (ctx_sz)
			reg_off = CTX_OFFSET + MAX_CID_CNT * MB_KERNEL_CTX_SIZE
				  + BNX2I_570X_PAGE_SIZE_DEFAULT *
				  (((cid_num - first_l4l5) / ctx_sz) + 256);
		else
			reg_off = CTX_OFFSET + (MB_KERNEL_CTX_SIZE * cid_num);
	} else
		/* 5709 device in normal node and 5706/5708 devices */
		reg_off = CTX_OFFSET + (MB_KERNEL_CTX_SIZE * cid_num);

	ep->qp.ctx_base = FUNC3(ep->hba->reg_base + reg_off,
					  MB_KERNEL_CTX_SIZE);
	if (!ep->qp.ctx_base)
		return -ENOMEM;

arm_cq:
	FUNC1(ep, CNIC_ARM_CQE);
	return 0;
}