#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct fib {long flags; int vector_no; int hw_fib_pa; int hbacmd_size; struct aac_dev* dev; TYPE_4__* hw_fib_va; } ;
struct aac_queue {int /*<<< orphan*/  numpending; } ;
struct aac_hba_tm_req {scalar_t__ iu_type; int reply_qid; int request_id; } ;
struct aac_hba_reset_req {int reply_qid; int request_id; } ;
struct aac_hba_cmd_req {int reply_qid; int request_id; } ;
struct aac_fib_xporthdr {int Handle; void* Size; int /*<<< orphan*/  HostAddress; } ;
struct aac_dev {int max_msix; scalar_t__ comm_interface; int /*<<< orphan*/  iq_lock; int /*<<< orphan*/ * rrq_outstanding; scalar_t__ sa_firmware; scalar_t__ msi_enabled; TYPE_1__* queues; } ;
typedef  int dma_addr_t ;
struct TYPE_10__ {int /*<<< orphan*/  IQ_L; int /*<<< orphan*/  IQ_H; int /*<<< orphan*/  IQN_L; int /*<<< orphan*/  IQN_H; } ;
struct TYPE_7__ {scalar_t__ TimeStamp; } ;
struct TYPE_8__ {scalar_t__ Command; int Handle; int /*<<< orphan*/  Size; TYPE_2__ u; void* SenderFibAddress; int /*<<< orphan*/  StructType; } ;
struct TYPE_9__ {TYPE_3__ header; } ;
struct TYPE_6__ {struct aac_queue* queue; } ;

/* Variables and functions */
 scalar_t__ AAC_COMM_MESSAGE_TYPE2 ; 
 scalar_t__ AAC_COMM_MESSAGE_TYPE3 ; 
 size_t AdapNormCmdQueue ; 
 scalar_t__ AifRequest ; 
 long FIB_CONTEXT_FLAG_NATIVE_HBA ; 
 int FIB_CONTEXT_FLAG_NATIVE_HBA_TMF ; 
 int /*<<< orphan*/  FIB_MAGIC2 ; 
 scalar_t__ HBA_IU_TYPE_SCSI_TM_REQ ; 
 TYPE_5__ MUnit ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct aac_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct aac_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct fib *fib)
{
	struct aac_dev *dev = fib->dev;
	struct aac_queue *q = &dev->queues->queue[AdapNormCmdQueue];
	u32 fibsize;
	dma_addr_t address;
	struct aac_fib_xporthdr *pFibX;
	int native_hba;
#if !defined(writeq)
	unsigned long flags;
#endif

	u16 vector_no;

	FUNC2(&q->numpending);

	native_hba = (fib->flags & FIB_CONTEXT_FLAG_NATIVE_HBA) ? 1 : 0;


	if (dev->msi_enabled && dev->max_msix > 1 &&
		(native_hba || fib->hw_fib_va->header.Command != AifRequest)) {

		if ((dev->comm_interface == AAC_COMM_MESSAGE_TYPE3)
			&& dev->sa_firmware)
			vector_no = FUNC1(dev);
		else
			vector_no = fib->vector_no;

		if (native_hba) {
			if (fib->flags & FIB_CONTEXT_FLAG_NATIVE_HBA_TMF) {
				struct aac_hba_tm_req *tm_req;

				tm_req = (struct aac_hba_tm_req *)
						fib->hw_fib_va;
				if (tm_req->iu_type ==
					HBA_IU_TYPE_SCSI_TM_REQ) {
					((struct aac_hba_tm_req *)
						fib->hw_fib_va)->reply_qid
							= vector_no;
					((struct aac_hba_tm_req *)
						fib->hw_fib_va)->request_id
							+= (vector_no << 16);
				} else {
					((struct aac_hba_reset_req *)
						fib->hw_fib_va)->reply_qid
							= vector_no;
					((struct aac_hba_reset_req *)
						fib->hw_fib_va)->request_id
							+= (vector_no << 16);
				}
			} else {
				((struct aac_hba_cmd_req *)
					fib->hw_fib_va)->reply_qid
						= vector_no;
				((struct aac_hba_cmd_req *)
					fib->hw_fib_va)->request_id
						+= (vector_no << 16);
			}
		} else {
			fib->hw_fib_va->header.Handle += (vector_no << 16);
		}
	} else {
		vector_no = 0;
	}

	FUNC2(&dev->rrq_outstanding[vector_no]);

	if (native_hba) {
		address = fib->hw_fib_pa;
		fibsize = (fib->hbacmd_size + 127) / 128 - 1;
		if (fibsize > 31)
			fibsize = 31;
		address |= fibsize;
#if defined(writeq)
		src_writeq(dev, MUnit.IQN_L, (u64)address);
#else
		FUNC6(&fib->dev->iq_lock, flags);
		FUNC8(dev, MUnit.IQN_H,
			FUNC10(address) & 0xffffffff);
		FUNC8(dev, MUnit.IQN_L, address & 0xffffffff);
		FUNC7(&fib->dev->iq_lock, flags);
#endif
	} else {
		if (dev->comm_interface == AAC_COMM_MESSAGE_TYPE2 ||
			dev->comm_interface == AAC_COMM_MESSAGE_TYPE3) {
			/* Calculate the amount to the fibsize bits */
			fibsize = (FUNC5(fib->hw_fib_va->header.Size)
				+ 127) / 128 - 1;
			/* New FIB header, 32-bit */
			address = fib->hw_fib_pa;
			fib->hw_fib_va->header.StructType = FIB_MAGIC2;
			fib->hw_fib_va->header.SenderFibAddress =
				FUNC3((u32)address);
			fib->hw_fib_va->header.u.TimeStamp = 0;
			FUNC0(FUNC10(address) != 0L);
		} else {
			/* Calculate the amount to the fibsize bits */
			fibsize = (sizeof(struct aac_fib_xporthdr) +
				FUNC5(fib->hw_fib_va->header.Size)
				+ 127) / 128 - 1;
			/* Fill XPORT header */
			pFibX = (struct aac_fib_xporthdr *)
				((unsigned char *)fib->hw_fib_va -
				sizeof(struct aac_fib_xporthdr));
			pFibX->Handle = fib->hw_fib_va->header.Handle;
			pFibX->HostAddress =
				FUNC4((u64)fib->hw_fib_pa);
			pFibX->Size = FUNC3(
				FUNC5(fib->hw_fib_va->header.Size));
			address = fib->hw_fib_pa -
				(u64)sizeof(struct aac_fib_xporthdr);
		}
		if (fibsize > 31)
			fibsize = 31;
		address |= fibsize;

#if defined(writeq)
		src_writeq(dev, MUnit.IQ_L, (u64)address);
#else
		FUNC6(&fib->dev->iq_lock, flags);
		FUNC8(dev, MUnit.IQ_H,
			FUNC10(address) & 0xffffffff);
		FUNC8(dev, MUnit.IQ_L, address & 0xffffffff);
		FUNC7(&fib->dev->iq_lock, flags);
#endif
	}
	return 0;
}