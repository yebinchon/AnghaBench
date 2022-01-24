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
struct ipr_ioadl_desc {void* address; void* flags_and_data_len; } ;
struct ipr_ioadl64_desc {int /*<<< orphan*/  address; void* data_len; void* flags; } ;
struct TYPE_6__ {void* data_transfer_length; void* ioadl_len; void* read_data_transfer_length; void* read_ioadl_len; } ;
struct TYPE_4__ {struct ipr_ioadl64_desc* ioadl64; struct ipr_ioadl_desc* ioadl; } ;
struct ipr_cmnd {int dma_use_sg; TYPE_3__ ioarcb; TYPE_2__* ioa_cfg; TYPE_1__ i; } ;
typedef  int dma_addr_t ;
struct TYPE_5__ {scalar_t__ sis64; } ;

/* Variables and functions */
 int IPR_IOADL_FLAGS_READ_LAST ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct ipr_cmnd *ipr_cmd, dma_addr_t dma_addr,
			   u32 len, int flags)
{
	struct ipr_ioadl_desc *ioadl = ipr_cmd->i.ioadl;
	struct ipr_ioadl64_desc *ioadl64 = ipr_cmd->i.ioadl64;

	ipr_cmd->dma_use_sg = 1;

	if (ipr_cmd->ioa_cfg->sis64) {
		ioadl64->flags = FUNC0(flags);
		ioadl64->data_len = FUNC0(len);
		ioadl64->address = FUNC1(dma_addr);

		ipr_cmd->ioarcb.ioadl_len =
		       	FUNC0(sizeof(struct ipr_ioadl64_desc));
		ipr_cmd->ioarcb.data_transfer_length = FUNC0(len);
	} else {
		ioadl->flags_and_data_len = FUNC0(flags | len);
		ioadl->address = FUNC0(dma_addr);

		if (flags == IPR_IOADL_FLAGS_READ_LAST) {
			ipr_cmd->ioarcb.read_ioadl_len =
				FUNC0(sizeof(struct ipr_ioadl_desc));
			ipr_cmd->ioarcb.read_data_transfer_length = FUNC0(len);
		} else {
			ipr_cmd->ioarcb.ioadl_len =
			       	FUNC0(sizeof(struct ipr_ioadl_desc));
			ipr_cmd->ioarcb.data_transfer_length = FUNC0(len);
		}
	}
}